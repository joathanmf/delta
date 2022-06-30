# Delta Api

Api simples criada para receber números para A, B e C e calcular o Delta, x1 e x2. Criada para a disciplina de Programação para Dispositivos Móveis do professor José Pessoa.

* rota **POST** ".../api/eq2g"
Exemplo da entrada:
~~~json
{
  "id": 1,
  "a": 1,
  "b": 4,
  "c": 1
}
~~~

* rota **GET**: ".../api/eq2g/1"
Retorna o **a, b, c** do id informado.
* rota **GET**: ".../api/eq2g/1/delta"
Retorna o **delta** do id informado.
* rota **GET**: ".../api/eq2g/1/x1"
Retorna o **x1** do id informado.
* rota **GET**: ".../api/eq2g/1/x2"
Retorna o **x2** do id informado.

* rota **DELETE**: ".../api/eq2g"
Deleta **TODOS** os dados.

**Para utilizar localmente, faça:**

* Instale as dependências `mix deps.get`
* Crie o banco de dados e execute as migrações `mix ecto.setup`
* Lance o endpoint Phoenix com `mix phx.server` ou dentro do IEx com `iex -S mix phx.server`

## Aprenda mais

  * Site oficial: https://www.phoenixframework.org/
  * Guias: https://hexdocs.pm/phoenix/overview.html
  * Documentação: https://hexdocs.pm/phoenix
  * Fórum: https://elixirforum.com/c/phoenix-forum
  * Fonte: https://github.com/phoenixframework/phoenix
