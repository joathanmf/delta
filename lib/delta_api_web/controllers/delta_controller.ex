defmodule DeltaApiWeb.DeltaController do
  use DeltaApiWeb, :controller

  alias DeltaApi.Eq2g.{Post, GetId, Delta, X1x2, Del}

  def post(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Post.call(params))
  end

  def get_id(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: GetId.call(params))
  end

  def delta(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Delta.call(params))
  end

  def x1(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: X1x2.call_x1(params))
  end

  def x2(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: X1x2.call_x2(params))
  end

  def delete(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Del.call())
  end
end
