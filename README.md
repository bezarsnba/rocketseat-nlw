# Rocketpay

To start your Phoenix server:

  * Install dependencies with `mix deps.get`
  * Create and migrate your database with `mix ecto.setup`
  * Start Phoenix endpoint with `mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please [check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Commands

Get account with iex:

```
iex -S mix
Rocketpay.Repo.all(Rocketpay.Account)

```
Simulate transaction

```
Rocketpay.Accounts.Transaction.call(%{"from" => "8ab36270-cb49-4d54-8642-24c575e25327", "to" => "19049d01-f109-48a9-8e3b-939641635787", "value" => "1.00"})

```

Api POST
```
http://localhost:4000/api/accounts/transaction
{
	"value": "1",
	"from": "19049d01-f109-48a9-8e3b-939641635787",
	"to": "8ab36270-cb49-4d54-8642-24c575e25327"
}

```


## Learn more

  * Official website: https://www.phoenixframework.org/
  * Guides: https://hexdocs.pm/phoenix/overview.html
  * Docs: https://hexdocs.pm/phoenix
  * Forum: https://elixirforum.com/c/phoenix-forum
  * Source: https://github.com/phoenixframework/phoenix
