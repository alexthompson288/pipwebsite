class AddGameinstructionsToSections < ActiveRecord::Migration
  def change
    add_column :sections, :gameinstructions, :text
  end
end
