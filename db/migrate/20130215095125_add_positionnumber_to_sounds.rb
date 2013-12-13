class AddPositionnumberToSounds < ActiveRecord::Migration
  def change
    add_column :sounds, :positionnumber, :integer
  end
end
