# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_phx,
  ecto_repos: [BlogPhx.Repo]

# Configures the endpoint
config :blog_phx, BlogPhxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "MG5KVBnL4R4AUwX+t8+mpzXWTEGw4VlwZFN7XrSk2eAICmBaKptnR6UOpm5Vp9jL",
  render_errors: [view: BlogPhxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogPhx.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Phauxth authentication configuration
config :phauxth,
  token_salt: "B0EfEYQa",
  endpoint: BlogPhxWeb.Endpoint

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
