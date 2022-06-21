defmodule DeltaApi.Delta do
  use Ecto.Schema
  import Ecto.Changeset

  alias DeltaApi.Abc

  @required_params [:delta, :abc_id]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "abc" do
    field :delta, :integer

    belongs_to :abc, Abc
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
  end
end
