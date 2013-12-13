class AddGameprogresstypeToGames < ActiveRecord::Migration
  def change
    add_column :games, :gameprogresstype, :string
  end
end
