class AddProgrammoduleIdToProgramsessions < ActiveRecord::Migration
  def change
    add_column :programsessions, :programmodule_id, :integer
  end
end
