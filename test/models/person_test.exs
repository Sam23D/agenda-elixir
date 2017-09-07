defmodule AgentaElixir.PersonTest do
  use AgentaElixir.ModelCase

  alias AgentaElixir.Person

  @valid_attrs %{name: "some name", phone: "some phone"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Person.changeset(%Person{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Person.changeset(%Person{}, @invalid_attrs)
    refute changeset.valid?
  end
end
