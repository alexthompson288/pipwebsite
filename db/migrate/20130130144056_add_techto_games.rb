class AddTechtoGames < ActiveRecord::Migration
  def up
  	add_column :games, :tech, :text
  end

  def down
  end
end
