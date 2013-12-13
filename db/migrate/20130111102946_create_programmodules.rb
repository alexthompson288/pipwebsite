class CreateProgrammodules < ActiveRecord::Migration
  def change
    create_table :programmodules do |t|
      t.integer :number

      t.timestamps
    end
  end
end
