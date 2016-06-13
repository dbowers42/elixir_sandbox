require Logger

defmodule Sandbox do
  use Application

  def start(_type, _args) do
    for n <- 1..50 do
      #Token.gen_token(128) |> IO.puts
      Token.gen_token(64) |> Logger.info
      Token.gen_token(64) |> Logger.debug
      Token.gen_token(64) |> Logger.warn
      Token.gen_token(64) |> Logger.error
    end

Logger.debug("hi")
    {:ok, self }
  end
end
