class CreateStages < ActiveRecord::Migration
  def change
    create_table :stages do |t|
      t.integer :number
      t.string :age
      t.text :description

      t.timestamps
    end
  end
end
