defmodule DeltaApi.Repo.Migrations.CreateAbcTable do
  use Ecto.Migration

  def up do
    create table(:abc) do
      add :a, :integer
      add :b, :integer
      add :c, :integer
    end
  end

  def down do
    drop table(:abc)
  end
end
