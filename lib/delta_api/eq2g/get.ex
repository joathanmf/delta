defmodule DeltaApi.Eq2g.Get do
  def call do
    list_of_maps =
      File.read!("eq2g.txt")
      |> String.split("\n")
      |> List.delete("")
      |> Enum.map(fn x -> Jason.decode!(x) end)

    case list_of_maps do
      [] -> "Vazio"
      _ -> list_of_maps
    end
  end
end
