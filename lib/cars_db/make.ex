defmodule CarsDb.Make do
  import Ecto.Changeset
  use Ecto.Schema
  alias CarsDb.{Model}


  schema "makes" do
    field(:name, :string)
    timestamps()

    has_many(:models, Model)
  end

  def changeset(make, params \\ %{}) do
    make
    |> cast(params, [:name])
    |> validate_required(:name)
    |> unique_constraint(:name)
  end

end
