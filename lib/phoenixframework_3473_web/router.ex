defmodule Phoenixframework3473Web.Router do
  use Phoenixframework3473Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", Phoenixframework3473Web do
    pipe_through :api
  end
end
