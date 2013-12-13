class AddCompletedToWords < ActiveRecord::Migration
  def change
    add_column :words, :completed, :boolean
  end
end
