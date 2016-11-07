defmodule PremierManagerPhoenix.Club do

  use PremierManagerPhoenix.Web, :model

  schema "clubs" do
    field :name, :string
    timestamps
  end

end
