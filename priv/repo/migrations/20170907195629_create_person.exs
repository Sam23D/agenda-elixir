defmodule AgentaElixir.Repo.Migrations.CreatePerson do
  use Ecto.Migration

  def change do
    create table(:personas) do
      add :name, :string
      add :phone, :string

      timestamps()
    end
  end
end
