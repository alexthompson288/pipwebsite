class AddCompletedToProgramsessions < ActiveRecord::Migration
  def change
    add_column :programsessions, :completed, :boolean
  end
end
