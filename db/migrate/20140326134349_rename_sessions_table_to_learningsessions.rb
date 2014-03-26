class RenameSessionsTableToLearningsessions < ActiveRecord::Migration
  def change
  	rename_table :sessions, :learningsessions
  end
end
