class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word
      t.string :startingletter
      t.boolean :cvc
      t.boolean :ccvc
      t.boolean :diagraph
      t.boolean :splitdiagraph
      t.integer :numsyllables
      t.integer :numletters
      t.integer :numphonemes
      t.string :image
      t.boolean :nonsense
      t.integer :entrypointmodule
      t.integer :entrypointunit
      t.integer :entrypoint_session

      t.timestamps
    end
  end
end
