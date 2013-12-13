class AddLinkingIndexToSections < ActiveRecord::Migration
  def change
    add_column :sections, :linking_index, :integer
  end
end
