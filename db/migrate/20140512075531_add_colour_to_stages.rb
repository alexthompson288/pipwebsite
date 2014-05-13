class AddColourToStages < ActiveRecord::Migration
  def change
    add_column :stages, :colour, :string
    add_column :stages, :test_url, :string
  end
end
