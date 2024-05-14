package config

import (
	"database/sql"
	"log"

	_ "github.com/go-sql-driver/mysql"
)

var DB *sql.DB

func ConnectDB() {
	db, err := sql.Open("mysql", "root:@/go_products?parseTime=true") // change the database name here
	if err != nil {
		panic(err)
	}

	// Menguji koneksi basis data
	if err = db.Ping(); err != nil {
		panic(err)
	}

	log.Println("Database Connected")
	DB = db
}
