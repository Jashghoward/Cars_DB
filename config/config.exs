import Config


config :cars_db, :ecto_repos, [CarsDB.Repo]


config :cars_db, CarsDB.Repo,
database: "cars_db",
username: "joshhoward",
password: "",
hostname: "localhost"
