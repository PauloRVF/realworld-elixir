defmodule RealworldElixir.Application do
  @moduledoc false

  use Application

  @impl true
  def start(_type, _args) do
    children = [
      RealworldElixir.Repo,
      RealworldElixirWeb.Telemetry,
      {Phoenix.PubSub, name: RealworldElixir.PubSub},
      RealworldElixirWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: RealworldElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end

  @impl true
  def config_change(changed, _new, removed) do
    RealworldElixirWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
