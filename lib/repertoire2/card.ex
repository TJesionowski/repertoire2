defmodule Repertoire2.Card do
  use Ecto.Schema
  import Ecto.Changeset

  schema "cards" do
    field :answer, :string
    field :cardtype, :string
    field :creator, :integer
    field :name, :string
    field :recipe, :string
    field :variables, :string
    field :nextreview, :date
    field :remembered_days, :integer
    field :ease_factor, :float

    timestamps()
  end

  @doc false
  def changeset(card, attrs) do
    card
    |> cast(attrs, [:name, :cardtype, :recipe, :variables, :answer, :creator, :nextreview, :remembered_days, :ease_factor])
    |> validate_required([:name, :cardtype, :recipe, :variables, :answer, :creator, :nextreview, :remembered_days, :ease_factor])
  end
end
