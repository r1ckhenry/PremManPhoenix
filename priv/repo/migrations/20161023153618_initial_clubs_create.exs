defmodule PremierManagerPhoenix.Repo.Migrations.InitialClubsCreate do
  use Ecto.Migration

  def change do
    create table( :clubs ) do
        add :name, :string

        timestamps
    end
  end

end
