class AddMneumonicToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :mneumonic, :string
  end
end
