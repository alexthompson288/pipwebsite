class RenameTypeinPosts < ActiveRecord::Migration
  def change
  	rename_column :posts, :type, :posttype
  end
end
