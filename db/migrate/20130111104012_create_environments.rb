class CreateEnvironments < ActiveRecord::Migration
  def change
    create_table :environments do |t|
      t.string :setting
      t.text :background
      t.text :foreground
      t.string :foregroundcontainer
      t.string :image

      t.timestamps
    end
  end
end
