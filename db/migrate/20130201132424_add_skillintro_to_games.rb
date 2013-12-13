class AddSkillintroToGames < ActiveRecord::Migration
  def change
    add_column :games, :skillintro, :boolean
  end
end
