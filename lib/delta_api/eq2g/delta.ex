defmodule DeltaApi.Eq2g.Delta do
  alias DeltaApi.Eq2g.GetId

  def call(params) do
    resp = GetId.call(params)

    case resp do
      "Não encontrado" ->
        "Não encontrado"

      _ ->
        %{delta: calc_delta(resp)}
    end
  end

  def calc_delta(%{"a" => a, "b" => b, "c" => c}) do
    b * b - 4 * a * c
  end
end
