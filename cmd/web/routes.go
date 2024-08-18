package main

import "net/http"

func (app *app) routes() http.Handler {
	mux := http.NewServeMux()

	mux.HandleFunc("GET /", app.getHome)
	mux.HandleFunc("GET /posts/create", app.CreatePost)
	mux.HandleFunc("POST /posts/create", app.StorePost)
	mux.HandleFunc("DELETE /posts/delete/{id}", app.DeletePost)
	return mux
}
