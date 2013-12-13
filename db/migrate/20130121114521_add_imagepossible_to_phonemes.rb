class AddImagepossibleToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :imagepossible, :boolean
  end
end
