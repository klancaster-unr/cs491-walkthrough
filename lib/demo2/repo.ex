defmodule Demo2.Repo do
  use Ecto.Repo,
    otp_app: :demo2,
    adapter: Ecto.Adapters.Postgres
end
