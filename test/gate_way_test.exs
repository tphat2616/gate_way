defmodule GateWayTest do
  use ExUnit.Case
  doctest GateWay

  test "greets the world" do
    assert GateWay.hello() == :world
  end
end
