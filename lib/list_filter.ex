require Integer

defmodule ListFilter do
  def call(list), do: check_count_odd(list, 0)

  defp check_count_odd([], acc), do: acc
  defp check_count_odd([ hd | tl ], acc) do
    is_a_number = hd
                  |> is_number?

    is_odd = case is_a_number do
      true -> Integer.is_odd(String.to_integer(hd))
      _ -> false
    end

    acc = case is_a_number && is_odd do
      true -> acc + 1
      false -> acc
    end
    check_count_odd(tl, acc)
  end

  defp is_number?(num) do
    Regex.compile!("^[+-]?[0-9]*\.?[0-9]*$")
    |> Regex.match?(num)
  end
end
