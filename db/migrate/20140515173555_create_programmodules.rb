class CreateProgrammodules < ActiveRecord::Migration
  def change
    create_table :programmodules do |t|
      t.integer :number
      t.string :colour
      t.string :phaselevel
      t.string :programmename
      t.integer :cms_id

      t.timestamps
    end
  end
end
