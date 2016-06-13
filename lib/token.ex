defmodule Token do
  defp gen_random_letter() do
    case :rand.uniform(2) do
      1 -> :rand.uniform(26) + 64
      2 -> :rand.uniform(26) + 96
    end
  end

  def gen_token(level) do
    gen_token(level, [])
  end

  def gen_token(0, token) do
    token
  end

  def gen_token(level, token) do
    token = List.insert_at(token, -1, gen_random_letter)
    gen_token(level - 1, token)
  end
end
