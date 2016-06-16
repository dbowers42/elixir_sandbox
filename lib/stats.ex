require Integer

defmodule Stats do
  @moduledoc """
  Provides basic statistical functions
  """

  @doc """
    Calculates the arithmetic mean of a list of numbers

    ## Parameters
      - list: A list of numbers

    ## Examples

      iex> Stats.mean([1, 2, 3])
      2
  """
  def mean(list) when is_list(list) do
    Enum.sum(list) / Enum.count(list)
  end

  @doc """
    Determines the median value of a list of numbers. For an odd number of data
    points this is the middle value of or an ordered set of data points. For an
    even number of the is the arithmetic mean of the twe middle most values in
    and ordered data set.

    ## Parameters
      - list: A list of numbers

    ## Examples

      iex> Stats.median([1, 2, 3])
      2

      iex> Stats.median([1, 2, 3, 4])
      2.5
  """
  def median(list) when is_list(list) do
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


  def mode([]), do: []

  @doc """
  ## Parameters
    - list: A list of numbers

  ## Examples

    iex> Stats.mode([1, 1, 2, 2, 2, 3, 3])
    [2]

    iex> Stats.mode([1, 1, 1, 1, 2, 2, 3, 3, 3, 3])
    [1, 4]

    iex> Stats.mode([])
    []
  """
  def mode(list) when is_list(list) do
    grouped = list
    |> Enum.group_by(&(&1))
    |> Enum.map(fn {k, v} -> {k, Enum.count(v)} end)

    max = grouped
    |> Enum.max_by(fn {k, v} -> v end)
    |> elem(1)

    grouped
    |> Enum.filter(fn {k, v} -> v == max end)
    |> Enum.map(fn {k, _v} -> k end)
    |> Enum.sort
  end

  def range(list) when is_list(list) do
    Enum.max(list) - Enum.min(list)
  end
end
