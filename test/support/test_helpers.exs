defmodule Rumbl.TestHelpers do
  alias Rumbl.{Accounts, Multimedia}

  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        name: "Some User",
        username: "user#{System.unique_integer([:positive])}",
        password: attrs[:password || "supersecret"]
      })
      |> Accounts.register_user()
    user
  end
end
