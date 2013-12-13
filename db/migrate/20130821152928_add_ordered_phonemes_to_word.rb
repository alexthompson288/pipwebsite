class AddOrderedPhonemesToWord < ActiveRecord::Migration
  def change
    add_column :words, :ordered_phonemes, :text
  end
end
