defmodule Repertoire2Web.ReviewController do
  use Repertoire2Web, :controller

  def show(conn, _params) do
    conn
    |> Plug.Conn.assign(:message, "Yeet!")
    |> render("review.html")
    render(conn, "review.html")
  end
end
