defmodule DeltaWeb.AbcController do
  use DeltaWeb, :controller

  alias Delta.AbcGet.Get

  def get(conn, _params) do
    conn
    |> put_status(:ok)
    |> render("get.json", result: Get.call())
  end
end
