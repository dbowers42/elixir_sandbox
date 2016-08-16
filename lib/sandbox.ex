require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    # [1.0,1.0,2.0,2,2.0,3.0,3.0,3.0]
    # |> Stats.mode
    # |> IO.inspect
    #
    # (1..100) |> Enum.each(fn n -> IO.puts n end)
    items = [1, 2, 3]

    IO.puts "=== arangements ==="
    Permutations.of_size(items, 2) |> IO.inspect
    {:ok, self }
  end
end
