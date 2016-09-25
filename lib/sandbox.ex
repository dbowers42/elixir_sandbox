require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    students = [
      Student.new("David", "Bowers", 1),
      Student.new("Laura", "Devries", 2),
      Student.new("Jeff", "Devries", 1),
      Student.new("Karen", "Devries", 1)
    ]

    Stats.mean_by(students, &(&1.rank)) |> IO.inspect
    Stats.median_by(students, &(&1.rank)) |> IO.inspect
    Stats.mode_by(students, &(&1.rank)) |> IO.inspect

    {:ok, self }
  end
end
