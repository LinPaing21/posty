package main

import (
	"database/sql"
	"fmt"
	"log"
	"net/http"

	"github.com/LinPaing21/posty/internal/models/sqlite"
	_ "github.com/mattn/go-sqlite3"
)

type app struct {
	posts *sqlite.PostModel
}

func main() {
	db, err := sql.Open("sqlite3", "./app.db")

	if err != nil {
		log.Fatal(err)
	}

	app := app{
		posts: &sqlite.PostModel{
			DB: db,
		},
	}

	srv := http.Server{
		Addr:    ":8000",
		Handler: app.routes(),
	}

	fmt.Println("Posty App Just Started. Listen on http://localhost:8000")

	srv.ListenAndServe()
}
