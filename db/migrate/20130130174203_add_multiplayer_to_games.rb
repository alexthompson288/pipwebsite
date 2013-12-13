class AddMultiplayerToGames < ActiveRecord::Migration
  def change
    add_column :games, :multiplayer, :boolean
  end
end
