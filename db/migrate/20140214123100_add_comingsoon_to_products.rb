class AddComingsoonToProducts < ActiveRecord::Migration
  def change
    add_column :products, :comingsoon, :boolean
  end
end
