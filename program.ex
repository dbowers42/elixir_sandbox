defmodule Program do
@lastname "Bowers"

  @student %{
      firstname: "David",
      lastname: @lastname
    }

  def main do
    greet(%{firstname: "David", lastname: "Bowers"})
  end

  def greet(@student = student) do
    IO.puts "hello #{student.firstname} #{student.lastname}"
  end

  def greet(student) do
      IO.puts "hi #{student.firstname} #{student.lastname}"
  end
end

Program.main
