class AddCompletedToEnvironments < ActiveRecord::Migration
  def change
    add_column :environments, :completed, :boolean
  end
end
