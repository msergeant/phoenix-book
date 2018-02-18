defmodule Storex.Accounts.User do
  use Ecto.Schema
  import Ecto.Changeset
  alias Storex.Accounts.User


  schema "accounts_users" do
    field :email, :string
    field :full_name, :string
    field :password_hash, :string

    timestamps()
  end

  @doc false
  def changeset(%User{} = user, attrs) do
    user
    |> cast(attrs, [:emai, :full_name, :password_hash])
    |> validate_required([:emai, :full_name, :password_hash])
  end
end
