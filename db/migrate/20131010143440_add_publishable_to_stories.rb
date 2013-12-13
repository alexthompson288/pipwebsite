class AddPublishableToStories < ActiveRecord::Migration
  def change
    add_column :stories, :publishable, :boolean
  end
end
