defmodule Repertoire2Web.AboutController do
  use Repertoire2Web, :controller

  def create_about(conn, _params) do
    render(conn, "about.html")
  end
end
