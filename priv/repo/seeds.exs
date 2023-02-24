# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:#
#     Demo2.Repo.insert!(%Demo2.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
1..10 |> Enum.each(fn _ -> Demo2.Repo.insert!(
  %Demo2.Accounts.User{
    name: Faker.Person.name(),
    age: Enum.random(20..100) / 1,
    title: Faker.Person.title()})
end)
