class AddAttrToUser < ActiveRecord::Migration
  def change
    add_column :users, :account_username, :string
    add_column :users, :child_usernames, :text
    add_column :users, :ip_address, :string
    add_column :users, :platform, :string
    add_column :users, :user_type, :string
  end
end
