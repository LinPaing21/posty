# Posty

To run migration, you have to install [Goose](https://github.com/pressly/goose) Golang.

``` $ goose -dir=assets/migrations sqlite3 app.db up ```

if you get driver not found error, simply install driver

``` $ go get github.com/mattn/go-sqlite3 ```

Run project with ``` go run cmd/web/* ```

Thanks for your time :blush:
