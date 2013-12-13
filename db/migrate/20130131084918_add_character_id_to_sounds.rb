class AddCharacterIdToSounds < ActiveRecord::Migration
  def change
    add_column :sounds, :character_id, :integer
    add_column :sounds, :setting_id, :integer
  end
end
