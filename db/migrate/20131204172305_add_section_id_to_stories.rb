class AddSectionIdToStories < ActiveRecord::Migration
  def change
    add_column :stories, :section_id, :integer
  end
end
