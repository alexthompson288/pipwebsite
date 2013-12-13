class RemoveNameFromThemesWords < ActiveRecord::Migration
  def up
  	remove_column :themes_words, :name
  end

  def down
  	add_column :themes_words, :name, :string
  end
end
