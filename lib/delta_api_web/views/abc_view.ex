defmodule DeltaApiWeb.AbcView do
  use DeltaApiWeb, :view

  def render("get_abc.json", %{result: result}) do
    result
  end
end
