require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    [1,1,2,2,2,3,3]
    |> Stats.mode
    |> IO.inspect
    {:ok, self }
  end
end
