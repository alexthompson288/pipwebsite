class AddStageIdToSkills < ActiveRecord::Migration
  def change
    add_column :skills, :stage_id, :integer
  end
end
