class AddCvccToWords < ActiveRecord::Migration
  def change
    add_column :words, :cvcc, :boolean
  end
end
