defmodule Program do
  def foo do
    receive do
      {message} ->
        IO.puts message
      foo
    end
  end

  def foobar do
    pid = spawn(Program, :foo, [])
    Process.register(pid, :msg)

  end
end

Program.foobar
send(:msg, {"hi"})
