defmodule PremierManagerPhoenix.ClubController do
  use PremierManagerPhoenix.Web, :controller
  alias PremierManagerPhoenix.Repo
  alias PremierManagerPhoenix.Club
  require Logger

  def index( conn, _params ) do
    # render( conn, "index.json" )
    clubs = Repo.all( Club )
    Logger.warn( inspect clubs )
    render conn, clubs: clubs 
    # json( conn, clubs )
  end

end
