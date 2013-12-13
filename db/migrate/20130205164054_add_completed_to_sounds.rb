class AddCompletedToSounds < ActiveRecord::Migration
  def change
    add_column :sounds, :completed, :boolean
  end
end
