defmodule DeltaApi.Eq2g.Put do
  alias DeltaApi.Eq2g.Post

  def call(params) do
    %{"id" => id} = Map.take(params, ["id"])
    id = String.to_integer(id)

    abc_map =
      Map.take(params, ["a", "b", "c"])
      |> Map.merge(%{"id" => id})

    filter =
      File.read!("eq2g.txt")
      |> String.split("\n")
      |> List.delete("")
      |> Enum.map(fn x -> Jason.decode!(x) end)
      |> Enum.filter(fn %{"id" => id_map} -> id_map == id end)
      |> List.first()

    case filter do
      nil ->
        "Não encontrado"

      _ ->
        Map.merge(filter, abc_map)
        |> Post.call()
    end
  end
end
