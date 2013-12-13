class CreateProgramunits < ActiveRecord::Migration
  def change
    create_table :programunits do |t|
      t.integer :number

      t.timestamps
    end
  end
end
