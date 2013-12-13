class AddNondecodableToWords < ActiveRecord::Migration
  def change
    add_column :words, :nondecodable, :boolean
  end
end
