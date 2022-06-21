# Delta Api

Api simples criada para gerar números aleatórios para A, B e C para calcular o Delta, x1 e x2. Criada para a disciplina de Programação para Dispositivos Móveis do professor José Pessoa.

* rota **get** ".../api/abc" retorna aleatórios para A, B e C
* rota **post** ".../api/delta" passando A, B, C e Delta, retorna x1 e x2

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
