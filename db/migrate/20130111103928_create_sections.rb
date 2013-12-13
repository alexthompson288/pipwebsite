class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.string :sectiontype

      t.timestamps
    end
  end
end
