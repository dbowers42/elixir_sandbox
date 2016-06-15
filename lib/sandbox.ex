require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    [1.0,1.0,2.0,2,2.0,3.0,3.0,3.0]
    |> Stats.mode
    |> IO.inspect
    {:ok, self }
  end
end
