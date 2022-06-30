defmodule DeltaApiWeb.DeltaView do
  use DeltaApiWeb, :view

  def render("result.json", %{result: result}) do
    result
  end
end
