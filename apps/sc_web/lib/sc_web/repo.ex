defmodule SC_Web.Repo do
  use Ecto.Repo,
      otp_app: :sc_web,
      adapter: Ecto.Adapters.Postgres
end