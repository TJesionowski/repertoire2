defmodule Repertoire2.Repo.Migrations.CreateNotes do
  use Ecto.Migration

  def change do
    create table(:notes) do
      add :name, :string
      add :text, :string

      timestamps()
    end
  end
end
