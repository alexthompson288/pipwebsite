class AddWeblinkToGames < ActiveRecord::Migration
  def change
    add_column :games, :weblink, :string
  end
end
