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

config :phoenix, :json_library, Jason

config :sc_web,
  generators: [context_app: false]

# Configures the endpoint
config :sc_web, ScWeb.Endpoint,
  url: [host: "localhost"],
  http: [port: 4444],
  secret_key_base: "HEYYfY4fspeFjf1xD+3WNGHXlN0y5vUf/IV9P7JVMjmua0iw0nqFfOwlnLvXcWqO",
  render_errors: [view: ScWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ScWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :sc_web, ecto_repos: [SC_Web.Repo]

config :sc_web, SC_Web.Repo,
  database: "stem_cell_dev",
  username: "itorum",
  password: "itorumpassword",
  hostname: "localhost",
  port: "25432"



# Sample configuration:
#
#     config :logger, :console,
#       level: :info,
#       format: "$date $time [$level] $metadata$message\n",
#       metadata: [:user_id]
#

