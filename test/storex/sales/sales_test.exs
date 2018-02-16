defmodule Storex.SalesTest do
  use Storex.DataCase

  alias Storex.{Sales, Store}

  describe "carts" do
    alias Storex.Sales.Cart

    test "create cart/0 creates a cart" do
      assert {:ok, %Cart{}} = Sales.create_cart()
    end

    test "get_cart!/1 returns a cart" do
      {:ok, cart} = Sales.create_cart()
      assert Sales.get_cart!(cart.id) == cart
    end
  end
end
