class RenameModuleInGameinstances < ActiveRecord::Migration
  def up
  	rename_column :gameinstances, :module_id, :programmodule_id
  end

  def down
  end
end
