defmodule Storex.Sales do
  @moduledoc """
  The Sales context.
  """

  import Ecto.Query, warn: false
  alias Storex.Repo

  alias Storex.Sales.{Cart, LineItem}

  def create_cart(attrs \\ %{}) do
    %Cart{}
    |> Cart.changeset(attrs)
    |> Repo.insert()
  end

  def get_cart!(id) do
    Repo.get(Cart, id)
  end
end
