class AddTrickyToWords < ActiveRecord::Migration
  def change
    add_column :words, :tricky, :boolean
  end
end
