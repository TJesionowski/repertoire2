defmodule Repertoire2Web.NoteController do
  use Repertoire2Web, :controller

  def create(conn, _params) do
    render(conn, "createnote.html")
  end
end
