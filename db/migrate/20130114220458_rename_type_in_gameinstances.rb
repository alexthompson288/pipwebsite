class RenameTypeInGameinstances < ActiveRecord::Migration
  def up
  	rename_column :gameinstances, :type, :gameinstancetype
  end

  def down
  end
end
