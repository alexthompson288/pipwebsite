class AddWebrequestToUsers < ActiveRecord::Migration
  def change
    add_column :users, :invite_received, :boolean
    add_column :users, :program_requested, :boolean
  end
end
