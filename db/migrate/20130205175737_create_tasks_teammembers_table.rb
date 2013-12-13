class CreateTasksTeammembersTable < ActiveRecord::Migration
 def up
  create_table :tasks_teammembers, :id => false do |t|
  		t.integer :task_id
  		t.integer :teammember_id
  	end

  	add_index :tasks_teammembers, :task_id
  	add_index :tasks_teammembers, :teammember_id
 
	end
end
