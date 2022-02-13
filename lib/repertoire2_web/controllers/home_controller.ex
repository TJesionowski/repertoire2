defmodule Repertoire2Web.HomeController do
  use Repertoire2Web, :controller

  def create_home(conn, _params) do
    render(conn, "home.html")
  end
end
