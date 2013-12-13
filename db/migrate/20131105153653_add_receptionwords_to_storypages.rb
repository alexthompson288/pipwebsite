class AddReceptionwordsToStorypages < ActiveRecord::Migration
  def change
    add_column :storypages, :receptionwords, :text
    add_column :storypages, :yearonenwords, :text
  end
end
