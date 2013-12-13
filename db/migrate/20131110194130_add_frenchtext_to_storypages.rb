class AddFrenchtextToStorypages < ActiveRecord::Migration
  def change
    add_column :storypages, :frenchtext, :text
    add_column :storypages, :spanishtext, :text
    add_column :storypages, :mandarintext, :text
    add_column :storypages, :germantext, :text
  end
end
