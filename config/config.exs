# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :phoenixframework_3473, Phoenixframework3473Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "t58J+vQM6i+UPTC6snrso6+BvT6A9RzN6W/iyyiwqPgcw/XFbSDCABa4lMEFsh3U",
  render_errors: [view: Phoenixframework3473Web.ErrorView, accepts: ~w(json)],
  pubsub: [name: Phoenixframework3473.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
