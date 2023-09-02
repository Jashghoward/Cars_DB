defmodule CarsDbTest do
  use ExUnit.Case
  doctest CarsDb

  test "greets the world" do
    assert CarsDb.hello() == :world
  end
end
