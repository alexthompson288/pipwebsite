class AddProgramunitAndProgrammoduleToSections < ActiveRecord::Migration
  def change
    add_column :sections, :programunit_id, :integer
    add_column :sections, :programmodule_id, :integer
  end
end
