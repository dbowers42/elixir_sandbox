require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    # [1.0,1.0,2.0,2,2.0,3.0,3.0,3.0]
    # |> Stats.mode
    # |> IO.inspect
    #
    # (1..100) |> Enum.each(fn n -> IO.puts n end)
    items = [
      Card.new(1, :hearts),
      Card.new(2, :clubs),
      Card.new(3, :spades),
      Card.new(4, :diamonds)
    ]

    IO.puts "=== arangements ==="
      decks = Permutations.of(items)
      decks |> Enum.map fn deck ->
        (deck |> Enum.map fn card ->
          card |> Card.display_name
        end)
        |> Enum.join(", ")
        |> IO.inspect
      end
    {:ok, self }
  end
end
