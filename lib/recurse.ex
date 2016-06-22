defmodule Recurse do
  def fib(0), do: 0

  def fib(1), do: 1
  # fib(6) = fib(5) + fib(4) = 5 + 3 = 8
  # fib(5) = fib(4) + fib(3) = 3 + 2 = 5
  # fib(4) = fib(3) + fib(2) = 2 + 1 = 3
  # fib(3) = fib(2) + fib(1) = 1 + 1 = 2
  # fib(2) = fib(1) + fib(0) = 1 + 0 = 1
  # fib(1) = 1
  # fib(0) = 0
  def fib(n) do
    fib(n-1) + fib(n-2)
  end

  def factorial(1) do
     1
  end

  # factorial(4) = factorial(3) * 4 = 24
  # factorial(3) = factorial(2) * 3 = 6
  # factorial(2) = factorial(1) * 2 = 2
  # factorial(1) = 1
  def factorial(n) do
    n * factorial(n-1)
  end
end
