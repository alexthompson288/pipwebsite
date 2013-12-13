class AddMissionobjectiveToProgrammodules < ActiveRecord::Migration
  def change
    add_column :programmodules, :modulemission, :text
    add_column :programmodules, :modulereward, :string
  end
end
