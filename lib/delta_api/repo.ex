defmodule DeltaApi.Repo do
  use Ecto.Repo,
    otp_app: :delta_api,
    adapter: Ecto.Adapters.Postgres
end
