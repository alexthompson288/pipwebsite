class RenameProgramsessionIdInSettings < ActiveRecord::Migration
  def up
  	rename_column :settings, :programsession_id, :programmodule_id
  end

  def down
  end
end
