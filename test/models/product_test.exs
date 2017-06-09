defmodule Bzaar.ProductTest do
  use Bzaar.ModelCase

  alias Bzaar.Product

  @valid_attrs %{description: "some content", name: "some content", price: "120.5", quantity: 42, size: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Product.changeset(%Product{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Product.changeset(%Product{}, @invalid_attrs)
    refute changeset.valid?
  end
end
