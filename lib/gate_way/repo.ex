defmodule GateWay.Repo do
  use Ecto.Repo,
    otp_app: :gate_way,
    adapter: Ecto.Adapters.Postgres
end
