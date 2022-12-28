defmodule Moriawase.Repo do
  use Ecto.Repo,
    otp_app: :moriawase,
    adapter: Ecto.Adapters.Postgres,
    # there will probably be some exceptions to this but I think it's
    # the correct default
    migration_primary_key: [name: :id, type: :binary_id]
end
