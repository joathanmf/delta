defmodule DeltaApi.Deltas.Calc do
  # alias DeltaApi.{Repo, Delta, Abc}

  def call(%{"a" => a, "b" => b, "c" => c, "delta" => d}) do
    delta = calc_delta(a, b, c)

    cond do
      delta <= 0 ->
        %{
          msg: "O Delta é negativo ou igual a zero. Equação não possui raízes reais",
          delta: delta
        }

      delta == d ->
        # -b +- raiz(delta) / 2 * a

        x1 = (-b + :math.sqrt(delta)) / 2 * a
        x2 = (-b - :math.sqrt(delta)) / 2 * a

        %{
          a: a,
          b: b,
          c: c,
          msg: "Delta correto",
          delta: delta,
          x1: x1,
          x2: x2
        }

      #   changeset_delta =
      #     %{"delta" => delta, "abc_id" => 10}
      #     |> Delta.changeset()

      #   # |> Repo.insert()

      #   %{"a" => a, "b" => b, "c" => c, "delta" => changeset_delta}
      #   |> Abc.changeset()
      #   |> Repo.insert()
      #   |> handle_insert()

      true ->
        %{
          msg: "O Delta informado é incorreto",
          delta: delta,
          delta_informado: d
        }
    end
  end

  def call(_) do
    %{msg: "Informe o A, B, C e o DELTA"}
  end

  defp calc_delta(a, b, c) do
    b * b - 4 * a * c
  end

  # defp handle_insert({:ok, %Abc{id: id}}) do
  #   id
  # end
end
