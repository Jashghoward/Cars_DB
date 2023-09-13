defmodule CarsDb.Model do
  import Ecto.Changeset
  use Ecto.Schema
  alias CarsDb.{Make}

  schema "models" do
    field(:title, :string)
    field(:category, :string)
    timestamps()

    belongs_to(:make, Make)
  end

  def changeset(model, params \\ %{}) do
    model


    |> cast(params, [:title, :category, :make_id])
    |> validate_required([:title, :category, :make_id])
  end
end
