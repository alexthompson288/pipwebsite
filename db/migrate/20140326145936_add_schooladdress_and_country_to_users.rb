class AddSchooladdressAndCountryToUsers < ActiveRecord::Migration
  def change
    add_column :users, :school_address, :string
    add_column :users, :country, :string
  end
end
