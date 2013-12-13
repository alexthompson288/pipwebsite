class CreateAudios < ActiveRecord::Migration
  def change
    create_table :audios do |t|
      t.string :name
      t.text :description
      t.string :type

      t.timestamps
    end
  end
end
