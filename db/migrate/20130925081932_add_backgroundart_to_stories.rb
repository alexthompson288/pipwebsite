class AddBackgroundartToStories < ActiveRecord::Migration
  def change
    add_column :stories, :backgroundart, :string
    add_column :stories, :fontsize, :string
    add_column :stories, :difficulty, :integer
    add_column :stories, :readingpadart, :string
    add_column :stories, :author, :string
    add_column :stories, :description, :text
  end
end
