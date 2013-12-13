class AddCompletedToCharacters < ActiveRecord::Migration
  def change
    add_column :characters, :completed, :boolean
  end
end
