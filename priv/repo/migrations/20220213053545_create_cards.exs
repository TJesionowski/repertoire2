defmodule Repertoire2.Repo.Migrations.CreateCards do
  use Ecto.Migration

  def change do
    create table(:cards) do
      add :name, :string
      add :cardtype, :string
      add :recipe, :string
      add :variables, :string
      add :answer, :string
      add :created, :utc_datetime
      add :creator, :integer

      timestamps()
    end
  end
end
