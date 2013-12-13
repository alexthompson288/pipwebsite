class RenameSettingToNameInEnvironments < ActiveRecord::Migration
  def up
  	rename_column :environments, :setting, :name
  end

  def down
  	
  end
end
