require Integer

defmodule Stats do
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
    grouped = list
    |> Enum.group_by(&(&1))
    |> Enum.map(fn {key, value} -> {key, Enum.count(value)} end)

    max = grouped
    |> Enum.max_by(fn {k, v} -> v end)
    |> elem(1)

    grouped
    |> Enum.filter(fn {k, v} -> v == max end)
    |> Enum.map(fn {k, v} -> k end)

  end
end
