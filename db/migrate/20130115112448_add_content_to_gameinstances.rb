class AddContentToGameinstances < ActiveRecord::Migration
  def change
    add_column :gameinstances, :content, :text
  end
end
