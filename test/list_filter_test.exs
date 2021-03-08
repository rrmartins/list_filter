defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "returns 3 when send 3 numbers odd" do
      size = ["3", "45", "21", "rodrigo", "22"]
             |> ListFilter.call

      expected_size = 3

      assert expected_size == size
    end

    test "returns 0 when not send numbers odd" do
      size = ["2", "4", "20", "rodrigo", "22"]
             |> ListFilter.call

      expected_size = 0

      assert expected_size == size
    end

    test "returns 0 when send empty" do
      size = []
             |> ListFilter.call

      expected_size = 0

      assert expected_size == size
    end
  end
end
