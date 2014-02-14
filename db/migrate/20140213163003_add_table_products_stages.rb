class AddTableProductsStages < ActiveRecord::Migration
  def up
  create_table :products_stages, :id => false do |t|
  		t.integer :product_id
  		t.integer :stage_id
  	end

  	add_index :products_stages, :product_id
  	add_index :products_stages, :stage_id
 
	end
end
