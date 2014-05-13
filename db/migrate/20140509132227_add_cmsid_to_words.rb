class AddCmsidToWords < ActiveRecord::Migration
  def change
    add_column :words, :cms_id, :integer
  end
end
