defmodule DeltaWeb.AbcView do
  use DeltaWeb, :view

  def render("get.json", %{result: abc}) do
    abc
  end
end
