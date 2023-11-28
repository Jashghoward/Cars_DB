defmodule CarsDb.Repo.Migrations.CreateMakeTable do
  use Ecto.Migration

  def change do


    create table(:make) do
      add :name, :string


      timestamps()
    end
  end
end
