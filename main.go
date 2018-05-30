// Package main provides ...
package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"time"
)

func gets() string {
	var input = bufio.NewScanner(os.Stdin)
	if input.Scan() {
		return input.Text()
	}
	return ""
}

func main() {
	n := int(random(1, 100))
	fmt.Println(n)
}

func random(min, max float64) float64 {
	rand.Seed(time.Now().UnixNano())
	return rand.Float64()*(max-min) + min
}
