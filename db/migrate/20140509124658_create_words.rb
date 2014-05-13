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
      t.datetime :created_at,           :null => false
      t.datetime :updated_at,           :null => false
      t.boolean :highfrequencyword
      t.boolean :cvcc
      t.boolean :imagepossible
      t.boolean :imagerequired
      t.boolean :completed
      t.boolean :tricky
      t.text :ordered_phonemes
      t.text :dummyorderedphonemes
      t.string :frenchword
      t.string :spanishword
      t.string :mandarinword
      t.string :germanword
    end
  end
end
