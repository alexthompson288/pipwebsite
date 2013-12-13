class AddCompletedToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :completed, :boolean
  end
end
