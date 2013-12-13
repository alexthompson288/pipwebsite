class AddNameToThemesWords < ActiveRecord::Migration
  def change
    add_column :themes_words, :name, :string
  end
end
