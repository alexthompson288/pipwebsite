class AddStorytypeToStories < ActiveRecord::Migration
  def change
    add_column :stories, :storytype, :string
  end
end
