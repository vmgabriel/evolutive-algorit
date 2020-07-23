# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :algoritmos_evolutivos_p,
  ecto_repos: [AlgoritmosEvolutivosP.Repo]

# Configures the endpoint
config :algoritmos_evolutivos_p, AlgoritmosEvolutivosP.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PqNENeT8RkznmDRSglfHdy8L02lDIkyDmTnhRqwWcUAB7edQx1tmNnvp0YmGjf7I",
  render_errors: [view: AlgoritmosEvolutivosP.ErrorView, accepts: ~w(html json)],
  pubsub: [name: AlgoritmosEvolutivosP.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
