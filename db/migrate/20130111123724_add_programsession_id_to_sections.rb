class AddProgramsessionIdToSections < ActiveRecord::Migration
  def change
    add_column :sections, :programsession_id, :integer
  end
end
