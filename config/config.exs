use Mix.Config

config :gate_way, GateWay.Repo,
  username: "postgres",
  password: "123456",
  database: "yojee_assignment_sep_29_simple_twitter_app_dev",
  hostname: "localhost",
  show_sensitive_data_on_connection_error: true,
  pool_size: 30

config :gate_way,
  ecto_repos: [GateWay.Repo]
