defmodule DeltaApi.Eq2g.DelId do
  def call(%{"id" => id}) do
    id = String.to_integer(id)

    list_of_maps =
      File.read!("eq2g.txt")
      |> String.split("\n")
      |> List.delete("")
      |> Enum.map(fn x -> Jason.decode!(x) end)

    filter = Enum.filter(list_of_maps, fn %{"id" => id_map} -> id_map == id end)

    case filter do
      [] ->
        "Não encontrado"

      _ ->
        list_of_maps = List.delete(list_of_maps, List.first(filter))
        File.write("eq2g.txt", "")

        Enum.map(list_of_maps, fn x ->
          File.write("eq2g.txt", Jason.encode!(x) <> "\n", [:append])
        end)

        "Deletado com sucesso"
    end
  end
end
