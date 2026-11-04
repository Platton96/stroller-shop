// Package data embeds the mock catalog into the binary, so the server deploys as a single file.
package data

import _ "embed"

//go:embed strollers.json
var Strollers []byte

//go:embed shop.json
var Shop []byte
