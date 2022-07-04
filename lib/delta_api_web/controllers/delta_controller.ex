defmodule DeltaApiWeb.DeltaController do
  use DeltaApiWeb, :controller

  alias DeltaApi.Eq2g.{Post, Get, GetId, Delta, X1x2, Del, DelId, Put}

  # Rota POST
  def post(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Post.call(params))
  end

  # Rota GET, pega todos os dados EQ2G
  def get(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Get.call())
  end

  # Rota GET, pega EQ2G pelo ID
  def get_id(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: GetId.call(params))
  end

  # Rota GET, pega o DELTA do ID informado
  def delta(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Delta.call(params))
  end

  # Rota GET, pega o X1 do ID informado
  def x1(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: X1x2.call_x1(params))
  end

  # Rota GET, pega o X2 do ID informado
  def x2(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: X1x2.call_x2(params))
  end

  # Rota DELETE, deleta todos os dados da base de dados
  def delete(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Del.call())
  end

  # Rota DELETE, deleta pelo ID informado
  def delete_id(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: DelId.call(params))
  end

  # Rota PUT, troca algum dado armazenado do ID informado
  def put(conn, params) do
    conn
    |> put_status(:ok)
    |> render("result.json", result: Put.call(params))
  end
end
