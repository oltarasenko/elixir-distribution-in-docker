defmodule ExsampleTest do
  use ExUnit.Case
  doctest Exsample

  test "greets the world" do
    assert Exsample.hello() == :world
  end
end
