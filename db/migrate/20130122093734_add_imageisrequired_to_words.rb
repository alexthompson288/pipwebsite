class AddImageisrequiredToWords < ActiveRecord::Migration
  def change
    add_column :words, :imagerequired, :boolean
  end
end
