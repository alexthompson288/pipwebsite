class AddVideoToProducts < ActiveRecord::Migration
  def change
  	add_column :products, :video, :text
  end
end
