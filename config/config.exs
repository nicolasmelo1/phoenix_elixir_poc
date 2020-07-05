# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :phoenix_test,
  ecto_repos: [PhoenixTest.Repo]

# Configures the endpoint
config :phoenix_test, PhoenixTestWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "eNHThGrgYsOEi6YhFIX3IqfKJdHMHL4fcDgKTFH4GNsF4z+HP8MParrUGX7KWBM+",
  render_errors: [view: PhoenixTestWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: PhoenixTest.PubSub,
  live_view: [signing_salt: "bNvrMWYk"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
