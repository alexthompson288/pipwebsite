class AddDownloadurlsToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :iphone, :string
    add_column :posts, :ipad, :string
    add_column :posts, :android, :string
    add_column :posts, :mac, :string
    add_column :posts, :pc, :string
  end
end
