class AddEnvironmentIdToGameinstances < ActiveRecord::Migration
  def change
    add_column :gameinstances, :environment_id, :integer
    
  end
end
