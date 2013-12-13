class AddStorysetIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :storyset_id, :integer
  end
end
