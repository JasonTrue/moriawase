defmodule Moriawase.Repo.Migrations.CreateMembersAuthTables do
  use Ecto.Migration

  def change do
    execute "CREATE EXTENSION IF NOT EXISTS citext", ""

    create table(:members, primary_key: false) do
      add :id, :uuid, primary_key: true
      add :email, :citext, null: false
      add :hashed_password, :string, null: false
      add :confirmed_at, :naive_datetime
      timestamps()
    end

    create unique_index(:members, [:email])

    create table(:members_tokens) do
      add :member_id, references(:members, on_delete: :delete_all), null: false
      add :token, :binary, null: false
      add :context, :string, null: false
      add :sent_to, :string
      timestamps(updated_at: false)
    end

    create index(:members_tokens, [:member_id])
    create unique_index(:members_tokens, [:context, :token])
  end
end
