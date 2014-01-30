class CreateLearninggamesStagesTable < ActiveRecord::Migration
  def change
    create_table :learninggames_stages, :id => false, :force => true do |t|
      t.integer :learninggame_id
      t.integer :stage_id
    end

    add_index "learninggames_stages", ["learninggame_id"], :name => "index_learninggames_stages_on_learninggame_id"
  	add_index "learninggames_stages", ["stage_id"], :name => "index_learninggames_stages_on_stage_id"
  end
end
