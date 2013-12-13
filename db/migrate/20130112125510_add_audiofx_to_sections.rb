class AddAudiofxToSections < ActiveRecord::Migration
  def change
    add_column :sections, :audiofx, :text
  end
end
