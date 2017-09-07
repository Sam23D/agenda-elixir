# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :agenta_elixir,
  ecto_repos: [AgentaElixir.Repo]

# Configures the endpoint
config :agenta_elixir, AgentaElixir.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "UKomZwmC3R9VWczPylQ8mqXkTzRZG6CKNWw2Dp7okjF72J+6LtGeHbjKuFG2v8rT",
  render_errors: [view: AgentaElixir.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AgentaElixir.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
