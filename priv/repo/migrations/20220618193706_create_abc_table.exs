defmodule Delta.Repo.Migrations.CreateAbcTable do
  use Ecto.Migration

  def up do
    create table("abc") do
      add :a, :string
      add :b, :string
      add :c, :string

      timestamps()
    end
  end

  def down do
    drop table("abc")
  end
end
