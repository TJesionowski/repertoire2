defmodule Repertoire2.Repo do
  use Ecto.Repo,
    otp_app: :repertoire2,
    adapter: Ecto.Adapters.Postgres
end
