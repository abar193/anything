defmodule Anything.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      # Start the Telemetry supervisor
      AnythingWeb.Telemetry,
      # Start the Ecto repository
      # Anything.Repo,
      # Start the PubSub system
      {Phoenix.PubSub, name: Anything.PubSub},
      # Start Finch
      {Finch, name: Anything.Finch},
      # Start the Endpoint (http/https)
      AnythingWeb.Endpoint
      # Start a worker by calling: Anything.Worker.start_link(arg)
      # {Anything.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: Anything.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  @impl true
  def config_change(changed, _new, removed) do
    AnythingWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
