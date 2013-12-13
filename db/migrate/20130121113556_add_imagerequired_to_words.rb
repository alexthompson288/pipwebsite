class AddImagerequiredToWords < ActiveRecord::Migration
  def change
    add_column :words, :imagepossible, :boolean
  end
end
