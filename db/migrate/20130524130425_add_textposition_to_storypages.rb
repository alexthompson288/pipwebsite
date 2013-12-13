class AddTextpositionToStorypages < ActiveRecord::Migration
  def change
    add_column :storypages, :textposition, :string
  end
end
