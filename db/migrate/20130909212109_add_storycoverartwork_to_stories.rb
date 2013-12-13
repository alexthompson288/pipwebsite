class AddStorycoverartworkToStories < ActiveRecord::Migration
  def change
    add_column :stories, :storycoverartwork, :string
  end
end
