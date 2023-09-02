defmodule CarsDb.Repo do
  use Ecto.Repo,
  otp_app: :cars_db,
  adapter: Ecto.Adapters.Postgres
  end
