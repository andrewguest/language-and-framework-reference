defmodule StarWarsAPITest do
  use ExUnit.Case
  doctest StarWarsAPI

  test "greets the world" do
    assert StarWarsAPI.hello() == :world
  end
end
