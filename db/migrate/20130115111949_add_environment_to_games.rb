class AddEnvironmentToGames < ActiveRecord::Migration
  def change
    add_column :games, :environment, :text
  end
end
