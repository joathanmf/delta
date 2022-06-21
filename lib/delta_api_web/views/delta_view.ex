defmodule DeltaApiWeb.DeltaView do
  use DeltaApiWeb, :view

  def render("calc.json", %{result: result}) do
    result
  end
end
