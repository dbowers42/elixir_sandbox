defmodule Permutations do
  def of([]) do
    [[]]
  end

  def of(list) do
    for h <- list, t <- of(list -- [h]) do
      [h | t]
    end
  end

  def of_size([], _) do
    [[]]
  end

  def of_size(_, 0) do
    [[]]
  end

  def of_size(list, size) do
    for x <- list, y <- of_size(list, size - 1) do
     [x | y]
    end
  end
end

