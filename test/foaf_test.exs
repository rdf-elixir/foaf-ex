defmodule FOAFTest do
  use ExUnit.Case
  doctest FOAF

  test "greets the world" do
    assert FOAF.hello() == :world
  end
end
