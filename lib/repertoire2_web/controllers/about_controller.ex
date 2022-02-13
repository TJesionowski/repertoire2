defmodule Repertoire2Web.AboutController do
  use Repertoire2Web, :controller

  def create(conn, _params) do
    render(conn, "about.html")
  end
end
