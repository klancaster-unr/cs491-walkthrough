defmodule Demo2.AccountsFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Demo2.Accounts` context.
  """

  @doc """
  Generate a user.
  """
  def user_fixture(attrs \\ %{}) do
    {:ok, user} =
      attrs
      |> Enum.into(%{
        age: 120.5,
        name: "some name",
        title: "some title"
      })
      |> Demo2.Accounts.create_user()

    user
  end
end
