class CreateLearninggames < ActiveRecord::Migration
  def change
    create_table :learninggames do |t|
      t.string :name
      t.string :skill
      t.string :learningobjective
      t.text :instructions
      t.text :resources
      t.text :extension
      t.string :video

      t.timestamps
    end
  end
end
