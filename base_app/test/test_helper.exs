ExUnit.start

Mix.Task.run "ecto.create", ~w(-r BaseApp.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r BaseApp.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(BaseApp.Repo)

