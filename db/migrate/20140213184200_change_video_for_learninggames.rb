class ChangeVideoForLearninggames < ActiveRecord::Migration
  change_table :learninggames do |t|  
        t.change :video, :text 
    end
end
