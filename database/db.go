package database

import (
	"log"
	"os"

	"github.com/guilhermeonrails/api-go-gin/models"
	"gorm.io/driver/postgres"
	"gorm.io/gorm"
)

var (
	DB  *gorm.DB
	err error
)

func ConectaComBancoDeDados() {

	stringDeConexao := "host=" + os.Getenv("POSTGRES_HOST") +
		" user=" + os.Getenv("POSTGRES_USER") +
		" password=" + os.Getenv("POSTGRES_PASSWORD") +
		" dbname=" + os.Getenv("POSTGRES_DBNAME") +
		" port=5432 " +
		" sslmode=disable"

		//	stringDeConexao := "host=" + os.Getenv("POSTGRES_HOST") +
		//		" user=" + os.Getenv("POSTGRES_USER") +
		//		" password=" + os.Getenv("POSTGRES_PASSWORD") +
		//		" dbname=" + os.Getenv("POSTGRES_DBNAME") +
		//		" Port=" + os.Getenv("POSTGRES_PORT") +
		//		" sslmode=disable"

	DB, err = gorm.Open(postgres.Open(stringDeConexao))
	if err != nil {
		log.Panic("Erro ao conectar com banco de dados")
	}

	DB.AutoMigrate(&models.Aluno{})
}
