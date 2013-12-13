class AddBoolsToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :is_target_sentence, :boolean
    add_column :sentences, :is_dummy_sentence, :boolean
  end
end
