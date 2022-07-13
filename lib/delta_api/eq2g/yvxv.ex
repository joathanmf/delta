defmodule DeltaApi.Eq2g.Yvxv do
  alias DeltaApi.Eq2g.{GetId, Delta}

  def call_yv(params) do
    resp = GetId.call(params)

    case resp do
      "Não encontrado" ->
        "Não encontrado"

      _ ->
        delta = Delta.calc_delta(resp)
        %{yv: calc_yv(resp, delta)}
    end
  end

  def call_xv(params) do
    resp = GetId.call(params)

    case resp do
      "Não encontrado" ->
        "Não encontrado"

      _ ->
        %{xv: calc_xv(resp)}
    end
  end

  defp calc_yv(%{"a" => a}, delta), do: -delta / (4 * a)

  defp calc_xv(%{"a" => a, "b" => b}), do: -b / (2 * a)
end
