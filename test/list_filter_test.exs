defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns 4 when send 4 numbers odd" do
      size = ["3", "45", "21", "rodrigo", "22"]
             |> ListFilter.call

      expected_size = 3

      assert expected_size == size
    end
  end
end
