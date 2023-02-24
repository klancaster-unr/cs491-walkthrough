defmodule Demo2.AccountsTest do
  use Demo2.DataCase

  alias Demo2.Accounts

  describe "users" do
    alias Demo2.Accounts.User

    import Demo2.AccountsFixtures

    @invalid_attrs %{age: nil, name: nil, title: nil}

    test "list_users/0 returns all users" do
      user = user_fixture()
      assert Accounts.list_users() == [user]
    end

    test "get_user!/1 returns the user with given id" do
      user = user_fixture()
      assert Accounts.get_user!(user.id) == user
    end

    test "create_user/1 with valid data creates a user" do
      valid_attrs = %{age: 120.5, name: "some name", title: "some title"}

      assert {:ok, %User{} = user} = Accounts.create_user(valid_attrs)
      assert user.age == 120.5
      assert user.name == "some name"
      assert user.title == "some title"
    end

    test "create_user/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Accounts.create_user(@invalid_attrs)
    end

    test "update_user/2 with valid data updates the user" do
      user = user_fixture()
      update_attrs = %{age: 456.7, name: "some updated name", title: "some updated title"}

      assert {:ok, %User{} = user} = Accounts.update_user(user, update_attrs)
      assert user.age == 456.7
      assert user.name == "some updated name"
      assert user.title == "some updated title"
    end

    test "update_user/2 with invalid data returns error changeset" do
      user = user_fixture()
      assert {:error, %Ecto.Changeset{}} = Accounts.update_user(user, @invalid_attrs)
      assert user == Accounts.get_user!(user.id)
    end

    test "delete_user/1 deletes the user" do
      user = user_fixture()
      assert {:ok, %User{}} = Accounts.delete_user(user)
      assert_raise Ecto.NoResultsError, fn -> Accounts.get_user!(user.id) end
    end

    test "change_user/1 returns a user changeset" do
      user = user_fixture()
      assert %Ecto.Changeset{} = Accounts.change_user(user)
    end
  end
end
