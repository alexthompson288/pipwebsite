class CreateProgramsessions < ActiveRecord::Migration
  def change
    create_table :programsessions do |t|
      t.integer :number
      t.string :learningobjective
      t.integer :programmodule_id
      t.integer :story_id
      t.integer :pipisode_id
      t.boolean :learningvoyagebool
      t.integer :target_number
      t.integer :highest_number
      t.integer :cms_id

      t.timestamps
    end
  end
end
