class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :sectiontype
      t.integer :programsession_id
      t.integer :game_id
      t.integer :number
      t.integer :programmodule_id
      t.integer :cms_id

      t.timestamps
    end
  end
end
