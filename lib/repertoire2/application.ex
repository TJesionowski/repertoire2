defmodule Repertoire2.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      Repertoire2.Repo,
      # Start the Telemetry supervisor
      Repertoire2Web.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: Repertoire2.PubSub},
      # Start the Endpoint (http/https)
      Repertoire2Web.Endpoint
      # Start a worker by calling: Repertoire2.Worker.start_link(arg)
      # {Repertoire2.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Repertoire2.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    Repertoire2Web.Endpoint.config_change(changed, removed)
    :ok
  end
end
