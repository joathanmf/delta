defmodule DeltaApi.Repo.Migrations.CreateDeltaTable do
  use Ecto.Migration

  def up do
    create table(:delta) do
      add :delta, :integer
      add :abc_id, references(:abc)
    end

    # create unique_index(:delta, [:abc_id])
  end

  def down do
    drop table(:delta)
  end
end
