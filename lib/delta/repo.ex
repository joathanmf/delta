defmodule Delta.Repo do
  use Ecto.Repo,
    otp_app: :delta,
    adapter: Ecto.Adapters.Postgres
end
