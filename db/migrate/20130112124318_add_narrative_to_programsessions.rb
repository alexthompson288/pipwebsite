class AddNarrativeToProgramsessions < ActiveRecord::Migration
  def change
    add_column :programsessions, :narrative, :text
  end
end
