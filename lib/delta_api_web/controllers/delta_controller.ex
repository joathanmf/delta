defmodule DeltaApiWeb.DeltaController do
  use DeltaApiWeb, :controller

  alias DeltaApi.Deltas.Calc

  def calc(conn, params) do
    conn
    |> put_status(:ok)
    |> render("calc.json", result: Calc.call(params))
  end
end
