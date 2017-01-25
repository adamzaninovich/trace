# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :trace,
  ecto_repos: [Trace.Repo]

# Configures the endpoint
config :trace, Trace.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "VKA7Ost33gMcOE2amfve8A0Ff/vPOWHjpeh+ZVNg2VDvv8c07RKR/orhuZ9qVVyC",
  render_errors: [view: Trace.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Trace.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
