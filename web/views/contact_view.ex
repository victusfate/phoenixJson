defmodule PhoenixJson.ContactView do
  use PhoenixJson.Web, :view

  def render("index.json", %{contacts: contacts}) do
    %{data: render_many(contacts, PhoenixJson.ContactView, "contact.json")}
  end

  def render("show.json", %{contact: contact}) do
    %{data: render_one(contact, PhoenixJson.ContactView, "contact.json")}
  end

  def render("contact.json", %{contact: contact}) do
    %{id: contact.id,
      name: contact.name,
      phone: contact.phone,
      sex: contact.sex,
      misc: contact.misc}
  end
end
