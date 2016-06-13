defmodule Student do
  defstruct firstname: nil, lastname: nil

  def new(firstname, lastname) do
    %Student{firstname: firstname, lastname: lastname}
  end

  def fullname(%Student{} = student) do
    "#{student.firstname} #{student.lastname}"
  end
end
