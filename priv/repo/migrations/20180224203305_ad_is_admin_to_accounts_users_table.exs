defmodule Storex.Repo.Migrations.AdIsAdminToAccountsUsersTable do
  use Ecto.Migration

  def change do
    alter table(:accounts_users) do
      add :is_admin, :boolean, default: false
    end
  end
end
