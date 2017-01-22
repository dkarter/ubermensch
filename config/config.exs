# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :ubermensch,
  ecto_repos: [Ubermensch.Repo]

# Configures the endpoint
config :ubermensch, Ubermensch.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "OSanIqnD1BNTdGHqmM3EMctCpN7JtER+NzNspDYTDx+IzQz4YB8bdpZ0dr3sKA6L",
  render_errors: [view: Ubermensch.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Ubermensch.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
