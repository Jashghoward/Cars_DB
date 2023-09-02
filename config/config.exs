import Config


config :cars_db, :ecto_repos, [CarsDb.Repo]


config :cars_db, CarsDb.Repo,
  database: "cars_db",
  username: "joshhoward",
  password: "",
  hostname: "localhost",
  pool_size: 10


# config :my_app, MyApp.Repo,
#   database: "my_app_dev",  # Replace with your actual database name
#   username: "your_username",  # Replace with your database username
#   password: "your_password",  # Replace with your database password
#   hostname: "localhost",     # Replace with your database host
#   pool_size: 10
