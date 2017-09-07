defmodule AgentaElixir.Person do
  use AgentaElixir.Web, :model

  schema "personas" do
    field :name, :string
    field :phone, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :phone])
    |> validate_required([:name, :phone])
  end
end
