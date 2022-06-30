defmodule DeltaApi.Eq2g.GetId do
  def call(%{"id" => id}) do
    id = String.to_integer(id)

    resp =
      File.read!("eq2g.txt")
      |> String.split("\n")
      |> List.delete("")
      |> Enum.map(fn x -> Jason.decode!(x) end)
      |> Enum.filter(fn %{"id" => id_map} -> id_map == id end)
      |> List.first()

    case resp do
      nil -> "Não encontrado"
      _ -> resp
    end
  end
end
