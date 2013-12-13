class AddBackgroundartToStorypages < ActiveRecord::Migration
  def change
    add_column :storypages, :backgroundart, :string
  end
end
