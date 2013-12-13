class AddProgramunitIdToProgramsessions < ActiveRecord::Migration
  def change
    add_column :programsessions, :programunit_id, :integer
  end
end
