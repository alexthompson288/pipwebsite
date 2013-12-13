class AddNarrativeintroToProgrammodules < ActiveRecord::Migration
  def change
    add_column :programmodules, :narrativeintro, :text
    add_column :programmodules, :narrativeexit, :text
  end
end
