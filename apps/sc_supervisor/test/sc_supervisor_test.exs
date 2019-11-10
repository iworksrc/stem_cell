defmodule ScSupervisorTest do
  use ExUnit.Case
  doctest ScSupervisor

  test "greets the world" do
    assert ScSupervisor.hello() == :world
  end
end
