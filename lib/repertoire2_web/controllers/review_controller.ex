defmodule Repertoire2Web.ReviewController do
  use Repertoire2Web, :controller

  def show(conn, _params) do
    render(conn, "review.html")
  end
end
