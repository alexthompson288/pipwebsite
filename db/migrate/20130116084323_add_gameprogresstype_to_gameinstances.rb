class AddGameprogresstypeToGameinstances < ActiveRecord::Migration
  def change
    add_column :gameinstances, :gameprogresstype, :string
  end
end
