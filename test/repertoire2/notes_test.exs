defmodule Repertoire2.NotesTest do
  use Repertoire2.DataCase

  alias Repertoire2.Notes

  describe "notes" do
    alias Repertoire2.Notes.Note

    import Repertoire2.NotesFixtures

    @invalid_attrs %{name: nil, text: nil}

    test "list_notes/0 returns all notes" do
      note = note_fixture()
      assert Notes.list_notes() == [note]
    end

    test "get_note!/1 returns the note with given id" do
      note = note_fixture()
      assert Notes.get_note!(note.id) == note
    end

    test "create_note/1 with valid data creates a note" do
      valid_attrs = %{name: "some name", text: "some text"}

      assert {:ok, %Note{} = note} = Notes.create_note(valid_attrs)
      assert note.name == "some name"
      assert note.text == "some text"
    end

    test "create_note/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Notes.create_note(@invalid_attrs)
    end

    test "update_note/2 with valid data updates the note" do
      note = note_fixture()
      update_attrs = %{name: "some updated name", text: "some updated text"}

      assert {:ok, %Note{} = note} = Notes.update_note(note, update_attrs)
      assert note.name == "some updated name"
      assert note.text == "some updated text"
    end

    test "update_note/2 with invalid data returns error changeset" do
      note = note_fixture()
      assert {:error, %Ecto.Changeset{}} = Notes.update_note(note, @invalid_attrs)
      assert note == Notes.get_note!(note.id)
    end

    test "delete_note/1 deletes the note" do
      note = note_fixture()
      assert {:ok, %Note{}} = Notes.delete_note(note)
      assert_raise Ecto.NoResultsError, fn -> Notes.get_note!(note.id) end
    end

    test "change_note/1 returns a note changeset" do
      note = note_fixture()
      assert %Ecto.Changeset{} = Notes.change_note(note)
    end
  end
end
