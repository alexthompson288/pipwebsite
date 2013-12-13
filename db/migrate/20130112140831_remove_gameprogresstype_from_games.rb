class RemoveGameprogresstypeFromGames < ActiveRecord::Migration
  def up
  	remove_column :games, :gameprogresstype
  end

  def down
  	add_column :games, :gameprogresstype, :string
  end
end
