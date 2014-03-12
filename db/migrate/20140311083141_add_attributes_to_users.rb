class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school, :string
    add_column :users, :postcode, :string
    add_column :users, :yeargroup, :string
    add_column :users, :website, :string
  end
end
