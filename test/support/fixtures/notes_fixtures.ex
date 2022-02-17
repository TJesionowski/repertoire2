defmodule Repertoire2.NotesFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Repertoire2.Notes` context.
  """

  @doc """
  Generate a note.
  """
  def note_fixture(attrs \\ %{}) do
    {:ok, note} =
      attrs
      |> Enum.into(%{
        name: "some name",
        text: "some text"
      })
      |> Repertoire2.Notes.create_note()

    note
  end
end
