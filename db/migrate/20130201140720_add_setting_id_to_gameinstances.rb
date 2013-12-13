class AddSettingIdToGameinstances < ActiveRecord::Migration
  def change
    add_column :gameinstances, :setting_id, :integer
  end
end
