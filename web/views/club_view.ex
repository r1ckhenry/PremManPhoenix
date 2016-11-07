defmodule PremierManagerPhoenix.ClubView do
  use PremierManagerPhoenix.Web, :view

  def render("index.json", %{clubs: clubs}) do
    render_many(clubs, __MODULE__, "club.json")
  end

  def render("club.json", %{club: club}) do
    %{
      id: club.id,
      name: club.name
    }
  end

end
