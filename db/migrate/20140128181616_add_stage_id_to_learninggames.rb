class AddStageIdToLearninggames < ActiveRecord::Migration
  def change
    add_column :learninggames, :stage_id, :integer
  end
end
