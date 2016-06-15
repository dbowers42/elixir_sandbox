defmodule StatsTest do
  use ExUnit.Case, async: true
  #doctest Stats

  test "can find single mode" do
    data = Enum.shuffle([1, 1, 2, 2, 2, 3, 3])
    assert Stats.mode(data) == [2]
  end

  test "can find modes in bimodel data set" do
    data = Enum.shuffle([1, 1, 2, 2, 2, 3, 3, 3])
    assert Stats.mode(data) == [2, 3]
  end

  test "can find the modes in a tri-modal data set" do
    data = Enum.shuffle([7, 7, 7, 3, 3, 4, 4, 1, 1, 1])
    assert Stats.mode(data) == [1, 7]
  end

  test "an empty data set has no modes" do
    data = []
    assert Stats.mode([]) == []
  end

  test "can calculate the mean of a data set" do
    data = Enum.shuffle([1, 2, 3])
    assert Stats.mean(data) == 2
  end

  test "can find the median of a data set with an odd number of data points" do
    data = Enum.shuffle([1, 2, 3, 4, 5])
    assert Stats.median(data) == 3
  end

  test "can find the median of a data set with an even number of data points" do
    data = Enum.shuffle([1, 2, 3, 5, 6, 7])
    assert Stats.mean(data) == 4
  end
end
