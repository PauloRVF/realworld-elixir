defmodule RealworldElixirWeb.Router do
  use RealworldElixirWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", RealworldElixirWeb do
    pipe_through :api
  end
end
