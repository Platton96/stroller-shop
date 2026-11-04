package assistant

import (
	"encoding/json"
	"fmt"
	"strings"

	"github.com/anthropics/anthropic-sdk-go/v2"

	"github.com/Platton96/stroller-shop/backend/internal/catalog"
)

const (
	toolSearch    = "search_strollers"
	toolDetails   = "get_stroller"
	toolShop      = "get_shop_info"
	toolShow      = "show_strollers"
	toolAddToCart = "add_to_cart"
)

func toolDefinitions() []anthropic.ToolUnionParam {
	str := map[string]any{"type": "string"}
	defs := []anthropic.ToolParam{
		{
			Name: toolSearch,
			Description: anthropic.String("Search the shop catalog. All parameters are optional; omit what the customer did not ask for. " +
				"Returns a compact list with id, name, type, price, weight, age range and key flags."),
			InputSchema: anthropic.ToolInputSchemaParam{Properties: map[string]any{
				"query": map[string]any{"type": "string", "description": "Free-text words that must all match brand, model, description or features"},
				"types": map[string]any{"type": "array", "items": map[string]any{"type": "string", "enum": []string{
					"modular_2in1", "modular_3in1", "stroll", "travel", "cane", "twin", "jogger"}}},
				"min_price_byn":    map[string]any{"type": "integer"},
				"max_price_byn":    map[string]any{"type": "integer"},
				"max_weight_kg":    map[string]any{"type": "number"},
				"child_age_months": map[string]any{"type": "integer", "description": "Child's current age; the stroller must fit it"},
				"cabin_luggage":    map[string]any{"type": "boolean", "description": "true = folds to airline cabin size"},
				"terrain":          map[string]any{"type": "string", "enum": []string{"city", "mixed", "all_terrain"}},
				"season":           map[string]any{"type": "string", "enum": []string{"all", "summer", "winter"}},
				"in_stock_only":    map[string]any{"type": "boolean"},
				"sort":             map[string]any{"type": "string", "enum": []string{"price_asc", "price_desc", "rating", "weight"}},
				"limit":            map[string]any{"type": "integer", "description": "Max results, default 10"},
			}},
		},
		{
			Name:        toolDetails,
			Description: anthropic.String("Full specs of one stroller by id: dimensions, wheels, suspension, colors, features, stock."),
			InputSchema: anthropic.ToolInputSchemaParam{Properties: map[string]any{"id": str}, Required: []string{"id"}},
		},
		{
			Name:        toolShop,
			Description: anthropic.String("Shop info: address, hours, delivery options and prices, payment, returns, warranty, test drive."),
			InputSchema: anthropic.ToolInputSchemaParam{Properties: map[string]any{}},
		},
		{
			Name: toolShow,
			Description: anthropic.String("Show stroller cards to the customer in the chat (1-4 ids, best first). " +
				"Use it whenever you recommend specific models, so the customer can open or add them."),
			InputSchema: anthropic.ToolInputSchemaParam{Properties: map[string]any{
				"ids": map[string]any{"type": "array", "items": str, "minItems": 1, "maxItems": 4},
			}, Required: []string{"ids"}},
		},
		{
			Name: toolAddToCart,
			Description: anthropic.String("Put a stroller into the customer's cart. Only call it when the customer clearly asked to add or buy a specific model. " +
				"color must be one of the stroller's colors; pick the first if the customer did not say."),
			InputSchema: anthropic.ToolInputSchemaParam{Properties: map[string]any{"stroller_id": str, "color": str},
				Required: []string{"stroller_id", "color"}},
		},
	}
	out := make([]anthropic.ToolUnionParam, len(defs))
	for i := range defs {
		out[i] = anthropic.ToolUnionParam{OfTool: &defs[i]}
	}
	return out
}

type searchInput struct {
	Query          string   `json:"query"`
	Types          []string `json:"types"`
	MinPriceBYN    int      `json:"min_price_byn"`
	MaxPriceBYN    int      `json:"max_price_byn"`
	MaxWeightKg    float64  `json:"max_weight_kg"`
	ChildAgeMonths *int     `json:"child_age_months"`
	CabinLuggage   *bool    `json:"cabin_luggage"`
	Terrain        string   `json:"terrain"`
	Season         string   `json:"season"`
	InStockOnly    bool     `json:"in_stock_only"`
	Sort           string   `json:"sort"`
	Limit          int      `json:"limit"`
}

func (in searchInput) filter() catalog.Filter {
	f := catalog.Filter{
		Query:        in.Query,
		MinPriceBYN:  in.MinPriceBYN,
		MaxPriceBYN:  in.MaxPriceBYN,
		MaxWeightKg:  in.MaxWeightKg,
		ChildAgeMo:   in.ChildAgeMonths,
		CabinLuggage: in.CabinLuggage,
		Terrain:      in.Terrain,
		Season:       in.Season,
		InStockOnly:  in.InStockOnly,
		Sort:         catalog.Sort(in.Sort),
		Limit:        in.Limit,
	}
	if f.Limit <= 0 || f.Limit > 20 {
		f.Limit = 10
	}
	for _, t := range in.Types {
		f.Types = append(f.Types, catalog.Type(t))
	}
	return f
}

// summary is the human-readable line the app shows above search results.
func (in searchInput) summary(found int) string {
	var parts []string
	if in.Query != "" {
		parts = append(parts, "«"+in.Query+"»")
	}
	if in.CabinLuggage != nil && *in.CabinLuggage {
		parts = append(parts, "в ручную кладь")
	}
	if in.MaxPriceBYN > 0 {
		parts = append(parts, fmt.Sprintf("до %d BYN", in.MaxPriceBYN))
	}
	if in.MinPriceBYN > 0 {
		parts = append(parts, fmt.Sprintf("от %d BYN", in.MinPriceBYN))
	}
	if in.MaxWeightKg > 0 {
		parts = append(parts, fmt.Sprintf("до %g кг", in.MaxWeightKg))
	}
	if in.ChildAgeMonths != nil {
		parts = append(parts, fmt.Sprintf("ребёнку %d мес", *in.ChildAgeMonths))
	}
	if in.Season != "" && in.Season != "all" {
		parts = append(parts, map[string]string{"summer": "лето", "winter": "зима"}[in.Season])
	}
	if in.Terrain != "" {
		parts = append(parts, map[string]string{"city": "город", "mixed": "город и парк", "all_terrain": "бездорожье"}[in.Terrain])
	}
	if len(in.Types) > 0 {
		parts = append(parts, strings.Join(in.Types, ", "))
	}
	if in.InStockOnly {
		parts = append(parts, "в наличии")
	}
	if len(parts) == 0 {
		parts = append(parts, "весь каталог")
	}
	return fmt.Sprintf("Искал: %s → %d", strings.Join(parts, " · "), found)
}

type briefStroller struct {
	ID           string   `json:"id"`
	Name         string   `json:"name"`
	Type         string   `json:"type"`
	PriceBYN     int      `json:"price_byn"`
	WeightKg     *float64 `json:"weight_kg,omitempty"`
	AgeFromMo    int      `json:"age_from_months"`
	AgeToMo      *int     `json:"age_to_months,omitempty"`
	CabinLuggage bool     `json:"cabin_luggage"`
	OneHandFold  *bool    `json:"one_hand_fold,omitempty"`
	Season       string   `json:"season"`
	Terrain      string   `json:"terrain"`
	InStock      bool     `json:"in_stock"`
	Rating       float64  `json:"rating"`
}

func brief(s catalog.Stroller) briefStroller {
	return briefStroller{
		ID: s.ID, Name: s.Brand + " " + s.Model, Type: string(s.Type), PriceBYN: s.PriceBYN,
		WeightKg: s.WeightKg, AgeFromMo: s.AgeFromMonths, AgeToMo: s.AgeToMonths,
		CabinLuggage: s.CabinLuggage, OneHandFold: s.OneHandFold, Season: s.Season,
		Terrain: s.Terrain, InStock: s.InStock, Rating: s.Rating,
	}
}

func toJSON(v any) string {
	b, err := json.Marshal(v)
	if err != nil {
		return `{"error":"internal"}`
	}
	return string(b)
}
