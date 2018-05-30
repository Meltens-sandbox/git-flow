// Package main provides ...
package main

import (
	"fmt"
	"math/rand"
	"time"
)

func main() {
	n := int(random(1, 100))
	fmt.Println(n)
}

func random(min, max float64) float64 {
	rand.Seed(time.Now().UnixNano())
	return rand.Float64()*(max-min) + min
}
