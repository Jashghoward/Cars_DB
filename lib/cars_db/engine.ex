defmodule CarsDb.Engine do
  import Ecto.Changeset
  use Ecto.Schema
  alias CarsDb.{Model}

  schema "engines" do
    field(:type, :string)
    field(:capaciry, :string)
    timestamps()

    belongs_to(:model, Model)
  end

  def changeset(engine, params \\ %{}) do
    engine
    |> cast(params, [:type, :capacity, :model_id])
    |> validate_required([:type, :capacity, :model_id])
  end
end

defmodule CarsDb.EngineContext do


  def list_engines do

  end

end
