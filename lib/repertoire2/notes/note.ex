defmodule Repertoire2.Notes.Note do
  use Ecto.Schema
  import Ecto.Changeset

  schema "notes" do
    field :name, :string
    field :text, :string

    timestamps()
  end

  @doc false
  def changeset(note, attrs) do
    note
    |> cast(attrs, [:name, :text])
    |> validate_required([:name, :text])
  end
end
