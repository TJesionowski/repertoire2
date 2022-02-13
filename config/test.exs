import Config

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :repertoire2, Repertoire2.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "repertoire2_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :repertoire2, Repertoire2Web.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "QT/pBr1mQEP8ILI3m5t494IP5Av15Be4KiZ6dIogSkWeYp+D6UR/4C4WB3IpZ/eB",
  server: false

# In test we don't send emails.
config :repertoire2, Repertoire2.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
