class CreateGlossaryterms < ActiveRecord::Migration
  def change
    create_table :glossaryterms do |t|
      t.string :term
      t.text :description

      t.timestamps
    end
  end
end
