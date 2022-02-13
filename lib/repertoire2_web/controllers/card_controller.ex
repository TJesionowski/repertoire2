defmodule Repertoire2Web.CardController do
  use Repertoire2Web, :controller

  def show(conn, _params) do
    json(conn, %{"answer" => "a*a + b*b","variables" => %{"a" => "Math.ceil(Math.random()*10)","b" => "Math.ceil(Math.random()*10)"},"recipe" => "{{a}}^2 + {{b}}^2 = {{answer}}"})
  end
end
