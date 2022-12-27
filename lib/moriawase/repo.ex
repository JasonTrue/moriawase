defmodule Moriawase.Repo do
  use Ecto.Repo,
    otp_app: :moriawase,
    adapter: Ecto.Adapters.Postgres
end
