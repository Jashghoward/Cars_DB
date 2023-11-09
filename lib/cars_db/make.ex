defmodule CarsDb.Make do
  import Ecto.Changeset
  use Ecto.Schema
  alias CarsDb.{Model}


  schema "makes" do
    field(:name, :string)
    timestamps()
    has_many(:models, Model
      )
  end

  def changeset(make, params \\ %{}) do
    make
    |> cast(params, [:name])
    |> validate_required(:name)
    |> unique_constraint(:name)
  end
end



defmodule CarsDb.MakeContext do

  alias CarsDb.{Repo, Make}



  def list_makes do
    all_makes = Repo.all(Make)
    IO.puts("List of all the makes:")
    Enum.each(all_makes, fn make ->\


      IO.puts("#{make.name}")
    end)




  end

  def create_make(make_name) do
    result = %Make{name: make_name}
    Repo.insert!(result)
    IO.puts("#{result}")
  end
end
