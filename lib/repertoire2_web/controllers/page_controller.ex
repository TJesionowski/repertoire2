defmodule Repertoire2Web.PageController do
  use Repertoire2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
