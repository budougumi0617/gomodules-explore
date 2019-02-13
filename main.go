package main

import (
	"fmt"
	"net/http"

	chi "gopkg.in/pressly/chi.v2"
)

func main() {
	fmt.Println("Start serer :80")
	r := chi.NewRouter()
	if err := http.ListenAndServe(":80", r); err != nil {
		fmt.Println(err)
	}
}
