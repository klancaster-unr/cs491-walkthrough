defmodule Demo2.Repo.Migrations.CreateUsers do
  use Ecto.Migration

  def change do
    create table(:users) do
      add :name, :string
      add :age, :float
      add :title, :string

      timestamps()
    end
  end
end
