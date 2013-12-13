class AddProgrammoduleIdToProgramunits < ActiveRecord::Migration
  def change
    add_column :programunits, :programmodule_id, :integer
  end
end
