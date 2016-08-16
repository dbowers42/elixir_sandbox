defmodule Student do
  defstruct [:firstname, :lastname]

  def new(firstname, lastname) do
    %Student{firstname: firstname, lastname: lastname}
  end

  def fullname(%Student{} = student) do
    "#{student.firstname} #{student.lastname}"
  end
end
