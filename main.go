// Package main provides ...
package main

import (
	"bufio"
	"fmt"
	"math/rand"
	"os"
	"strconv"
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
	n := selectLevel()
	fmt.Println(n)
}

func selectLevel() int {
	fmt.Println("難易度を選択してください:")
	i, _ := strconv.Atoi(gets())
	return int(random(1, float64(i)))
}

func random(min, max float64) float64 {
	rand.Seed(time.Now().UnixNano())
	return rand.Float64()*(max-min) + min
}
