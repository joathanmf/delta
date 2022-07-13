defmodule DeltaApi.Eq2g.X1x2 do
  alias DeltaApi.Eq2g.{GetId, Delta}

  def call_x1(params) do
    resp = GetId.call(params)

    case resp do
      "Não encontrado" ->
        "Não encontrado"

      _ ->
        delta = Delta.calc_delta(resp)
        %{x1: calc_x1(resp, delta)}
    end
  end

  def call_x2(params) do
    resp = GetId.call(params)

    case resp do
      "Não encontrado" ->
        "Não encontrado"

      _ ->
        delta = Delta.calc_delta(resp)
        %{x2: calc_x2(resp, delta)}
    end
  end

  defp calc_x1(%{"a" => a, "b" => b}, delta) do
    (-b + :math.sqrt(delta)) / (2 * a)
  end

  defp calc_x2(%{"a" => a, "b" => b}, delta) do
    (-b - :math.sqrt(delta)) / (2 * a)
  end
end
