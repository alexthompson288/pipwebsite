class AddEnvironmentIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :environment_id, :integer
  end
end
