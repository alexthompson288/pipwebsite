class AddSettingIdToEnvironments < ActiveRecord::Migration
  def change
    add_column :environments, :setting_id, :integer
  end
end
