defmodule ElixirBoilerplateTest do
  use ExUnit.Case
  doctest ElixirBoilerplate

  test "greets the world" do
    assert ElixirBoilerplate.hello() == :world
  end
end