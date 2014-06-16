class RemoveObsoleteTables < ActiveRecord::Migration
  def change
    drop_table :activities
    drop_table :learningsessions
    drop_table :pipusers
    drop_table :skills
  end
end
