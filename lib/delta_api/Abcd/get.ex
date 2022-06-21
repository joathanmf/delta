defmodule DeltaApi.Abcd.Get do
  def call do
    %{
      "a" => :rand.uniform(500),
      "b" => :rand.uniform(1000),
      "c" => :rand.uniform(500)
    }
  end
end
