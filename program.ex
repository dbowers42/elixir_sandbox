require Integer

defmodule Program do
  def mean(list) do
    Enum.sum(list) / Enum.count(list)
  end

  def median(list) do
    sorted = list |> Enum.sort

    index = sorted
    |> Enum.count
    |> div(2)

    cond do
      Enum.count(sorted) |> Integer.is_even ->
        mean([Enum.at(sorted, index), Enum.at(sorted, index - 1)])
      true ->
        Enum.at(sorted, index)
    end
  end

  def mode(list) do
    list
    |> Enum.sort
    |> Enum.group_by(&(&1))
    |> Enum.map fn {key, value} -> {key, Enum.count(value)} end
    |> Enum.sort_by fn {_key, c} -> c end
  end
end

a = [1,1,3,4, 5,5, 5]

a |> Program.mean() |> IO.inspect
a |> Program.median() |> IO.inspect
a |> Program.mode() |> IO.inspect
