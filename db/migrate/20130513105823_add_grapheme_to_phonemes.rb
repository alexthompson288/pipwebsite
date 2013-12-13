class AddGraphemeToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :grapheme, :string
  end
end
