defmodule DeltaApiWeb.AbcController do
  use DeltaApiWeb, :controller

  alias DeltaApi.Abcd.Get

  def get_abc(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("get_abc.json", result: Get.call())
  end
end
