class AddSetnumberToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :setnumber, :integer
  end
end
