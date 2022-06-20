defmodule Delta.Abc do
  use Ecto.Schema
  import Ecto.Changeset

  @required_params [:a, :b, :c]

  @derive {Jason.Encoder, only: @required_params ++ [:id]}

  schema "abc" do
    field :a, :string
    field :b, :string
    field :c, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @required_params)
    |> validate_required(@required_params)
    |> unique_constraint(@required_params)
  end
end
