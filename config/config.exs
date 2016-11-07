# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :premier_manager_phoenix,
  ecto_repos: [PremierManagerPhoenix.Repo]

# Configures the endpoint
config :premier_manager_phoenix, PremierManagerPhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "ywOb7efxzCdgeNg8IdCvB6uKtK/9QjXNzig856q0mSf8X70efxb+beRRZExZhuxY",
  render_errors: [view: PremierManagerPhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PremierManagerPhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
