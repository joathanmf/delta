defmodule DeltaApi.Eq2g.Post do
  def call(%{"a" => a, "b" => b, "c" => c, "id" => id}) do
    params = %{"id" => id, "a" => a, "b" => b, "c" => c}

    list_of_maps =
      File.read!("eq2g.txt")
      |> String.split("\n")
      |> List.delete("")
      |> Enum.map(fn x -> Jason.decode!(x) end)

    filter = Enum.filter(list_of_maps, fn %{"id" => id_map} -> id_map == id end)

    case filter do
      [] ->
        File.write("eq2g.txt", Jason.encode!(params) <> "\n", [:append])

      _ ->
        list_of_maps = List.delete(list_of_maps, List.first(filter))
        # IO.inspect(list_of_maps)
        # IO.inspect(filter)
        list_of_maps = list_of_maps ++ [params]
        # IO.inspect(list_of_maps)
        File.write("eq2g.txt", "")

        Enum.map(list_of_maps, fn x ->
          File.write("eq2g.txt", Jason.encode!(x) <> "\n", [:append])
        end)
    end

    params
  end

  def call(_), do: "Informe o Id, a, b e c"
end
