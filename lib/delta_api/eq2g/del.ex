defmodule DeltaApi.Eq2g.Del do
  def call do
    File.write("eq2g.txt", "")
    "Todos os dados foram deletados"
  end
end
