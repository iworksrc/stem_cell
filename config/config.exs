# This file is responsible for configuring your umbrella
# and **all applications** and their dependencies with the
# help of the Config module.
#
# Note that all applications in your umbrella share the
# same configuration and dependencies, which is why they
# all use the same configuration file. If you want different
# configurations or dependencies per app, it is best to
# move said applications out of the umbrella.
import Config

config :sc_web,
  generators: [context_app: false]

# Configures the endpoint
config :sc_web, ScWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HEYYfY4fspeFjf1xD+3WNGHXlN0y5vUf/IV9P7JVMjmua0iw0nqFfOwlnLvXcWqO",
  render_errors: [view: ScWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ScWeb.PubSub, adapter: Phoenix.PubSub.PG2]

# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#
