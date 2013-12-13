class CreateProgramsessions < ActiveRecord::Migration
  def change
    create_table :programsessions do |t|
      t.integer :number
      t.string :learningobjective

      t.timestamps
    end
  end
end
