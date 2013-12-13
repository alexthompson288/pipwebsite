class RenameTypeinSounds < ActiveRecord::Migration
  def up
  	rename_column :sounds, :type, :soundtype
  end

  def down
  end
end
