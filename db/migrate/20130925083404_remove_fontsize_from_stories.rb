class RemoveFontsizeFromStories < ActiveRecord::Migration
  def up
  	remove_column :stories, :fontsize
  	add_column :stories, :fontsize, :integer
  end

  def down
  end
end
