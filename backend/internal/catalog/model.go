// Package catalog holds the stroller catalog: the data model, loading and search.
package catalog

// Type is a stroller category. Values match the "type" field in strollers.json.
type Type string

const (
	TypeModular2in1 Type = "modular_2in1"
	TypeModular3in1 Type = "modular_3in1"
	TypeStroll      Type = "stroll"
	TypeTravel      Type = "travel"
	TypeCane        Type = "cane"
	TypeTwin        Type = "twin"
	TypeJogger      Type = "jogger"
)

// TypeInfo is a category with a human-readable Russian label.
type TypeInfo struct {
	Type  Type   `json:"type"`
	Label string `json:"label"`
	Count int    `json:"count"`
}

// typeLabels keeps the display order of categories.
var typeLabels = []struct {
	Type  Type
	Label string
}{
	{TypeModular2in1, "Модульные 2 в 1"},
	{TypeModular3in1, "Модульные 3 в 1"},
	{TypeStroll, "Прогулочные"},
	{TypeTravel, "Компактные для путешествий"},
	{TypeCane, "Трости"},
	{TypeTwin, "Для двойни"},
	{TypeJogger, "Спортивные и вездеходы"},
}

// Dimensions are folded dimensions in centimetres.
type Dimensions struct {
	L float64 `json:"l"`
	W float64 `json:"w"`
	H float64 `json:"h"`
}

// Stroller is one catalog item. Pointer fields are nullable: the spec is unknown.
type Stroller struct {
	ID                 string      `json:"id"`
	Brand              string      `json:"brand"`
	Model              string      `json:"model"`
	Type               Type        `json:"type"`
	Description        string      `json:"description"`
	PriceBYN           int         `json:"price_byn"`
	PriceNote          *string     `json:"price_note"`
	AgeFromMonths      int         `json:"age_from_months"`
	AgeToMonths        *int        `json:"age_to_months"`
	MaxChildWeightKg   *float64    `json:"max_child_weight_kg"`
	WeightKg           *float64    `json:"weight_kg"`
	FoldedDimensionsCm *Dimensions `json:"folded_dimensions_cm"`
	CabinLuggage       bool        `json:"cabin_luggage"`
	OneHandFold        *bool       `json:"one_hand_fold"`
	Wheels             *string     `json:"wheels"`
	Suspension         *string     `json:"suspension"`
	SeatReclinesFlat   *bool       `json:"seat_reclines_flat"`
	ReversibleSeat     *bool       `json:"reversible_seat"`
	Season             string      `json:"season"`
	Terrain            string      `json:"terrain"`
	Colors             []string    `json:"colors"`
	Features           []string    `json:"features"`
	InStock            bool        `json:"in_stock"`
	StockQty           int         `json:"stock_qty"`
	Rating             float64     `json:"rating"`
	SourceURL          string      `json:"source_url"`
	ImageURL           *string     `json:"image_url"`
}

// Name is "Brand Model", used for text search and display.
func (s Stroller) Name() string { return s.Brand + " " + s.Model }
