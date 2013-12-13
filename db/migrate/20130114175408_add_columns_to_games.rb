class AddColumnsToGames < ActiveRecord::Migration
  def change
    add_column :games, :adaptivelearning, :text
    add_column :games, :notes, :text
    add_column :games, :aim, :text
    add_column :games, :skill, :string
    add_column :games, :revise, :boolean
    add_column :games, :learn, :boolean
    add_column :games, :apply, :boolean
    add_column :games, :practise, :boolean
  end
end
