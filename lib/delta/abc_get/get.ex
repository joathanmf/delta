defmodule Delta.AbcGet.Get do
  alias Delta.{Repo, Abc}

  @number 1000

  def call do
    %{
      "a" => Integer.to_string(:rand.uniform(@number)),
      "b" => Integer.to_string(:rand.uniform(@number)),
      "c" => Integer.to_string(:rand.uniform(@number))
    }
    |> Abc.changeset()
    |> Repo.insert()
    |> handle_insert()
  end

  defp handle_insert({:ok, %Abc{} = result}) do
    result
  end

  defp handle_insert({:error, result}) do
    result
  end
end
