defmodule PhoenixJson.ContactTest do
  use PhoenixJson.ModelCase

  alias PhoenixJson.Contact

  @valid_attrs %{misc: "some content", name: "some content", phone: "some content", sex: 42}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Contact.changeset(%Contact{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Contact.changeset(%Contact{}, @invalid_attrs)
    refute changeset.valid?
  end
end
