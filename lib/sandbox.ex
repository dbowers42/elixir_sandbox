require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    pid = Stack.start_link([1,2,3])
    Stack.pop(pid) |> IO.inspect
    Stack.pop(pid) |> IO.inspect
    Stack.push(pid, 7)
    Stack.pop(pid) |> IO.inspect
    {:ok, self }
  end
end
