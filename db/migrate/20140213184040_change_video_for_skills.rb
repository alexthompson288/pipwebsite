class ChangeVideoForSkills < ActiveRecord::Migration
  change_table :skills do |t|  
        t.change :video, :text 
    end
end
