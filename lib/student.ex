defmodule Student do
  defstruct firstname: nil, lastname: nil, rank: 0

  def new(firstname, lastname, rank) do
    %Student{firstname: firstname, lastname: lastname, rank: rank}
  end

  def fullname(%Student{} = student) do
    "#{student.firstname} #{student.lastname}"
  end
end
