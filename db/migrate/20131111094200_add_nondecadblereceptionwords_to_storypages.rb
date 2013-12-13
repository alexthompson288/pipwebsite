class AddNondecadblereceptionwordsToStorypages < ActiveRecord::Migration
  def change
    add_column :storypages, :nondecodablereceptionwords, :text
    add_column :storypages, :nondecodableyearonewords, :text
  end
end
