defmodule RealworldElixir.Repo do
  use Ecto.Repo,
    otp_app: :realworld_elixir,
    adapter: Ecto.Adapters.Postgres
end
