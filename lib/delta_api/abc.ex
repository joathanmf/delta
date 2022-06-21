defmodule DeltaApi.Abc do
  use Ecto.Schema
  import Ecto.Changeset

  alias DeltaApi.Delta

  @required_params [:a, :b, :c]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "abc" do
    field :a, :integer
    field :b, :integer
    field :c, :integer

    has_one :delta, Delta
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> unique_constraint(@required_params)
  end
end
