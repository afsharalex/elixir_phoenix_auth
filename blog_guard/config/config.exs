# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :blog_guard,
  ecto_repos: [BlogGuard.Repo]

# Configures the endpoint
config :blog_guard, BlogGuardWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "05Ds11eV054icH0s6ydDmm8cJ+0kNkY18SVK7o5+JApz4dS+UbbdZTzP7fSTSrDT",
  render_errors: [view: BlogGuardWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: BlogGuard.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
