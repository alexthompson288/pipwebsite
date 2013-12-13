class AddOverviewtoSounds < ActiveRecord::Migration
  def up
  	add_column :sounds, :overview, :string
  end

  def down
  end
end
