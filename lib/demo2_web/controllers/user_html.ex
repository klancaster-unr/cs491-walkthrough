defmodule Demo2Web.UserHTML do
  use Demo2Web, :html

  # def index(assigns) do
  #   ~H"""
  #   <h1 class="myclass">Listing users from UserHTML</h1>
  #   """

  # end
  embed_templates "user_html/*"
end
