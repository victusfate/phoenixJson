defmodule PhoenixJson.Repo.Migrations.CreateContact do
  use Ecto.Migration

  def change do
    create table(:contacts) do
      add :name, :string
      add :phone, :string
      add :sex, :integer
      add :misc, :string

      timestamps
    end

  end
end
