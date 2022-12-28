defmodule Moriawase.Repo.Migrations.AddMemberFields do
  use Ecto.Migration

  def change do
    alter table(:members) do
      add :display_name, :citext, null: false
      add :username, :citext, null: false
    end

    unique_index(:members, :username)
  end
end
