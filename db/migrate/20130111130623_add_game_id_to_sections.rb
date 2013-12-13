class AddGameIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :game_id, :integer
  end
end
