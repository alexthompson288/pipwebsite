class AddProgramsessionIdToSettings < ActiveRecord::Migration
  def change
    add_column :settings, :programsession_id, :integer
  end
end
