class AddOverviewToGames < ActiveRecord::Migration
  def change
    add_column :games, :overview, :text
    add_column :games, :imagesrequired, :boolean
    add_column :games, :animationrequired, :boolean
  end
end
