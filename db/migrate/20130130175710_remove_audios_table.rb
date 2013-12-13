class RemoveAudiosTable < ActiveRecord::Migration
  def up
  	drop_table :audios
  end

  def down
  end
end
