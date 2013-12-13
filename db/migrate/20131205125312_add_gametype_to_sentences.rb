class AddGametypeToSentences < ActiveRecord::Migration
  def change
    add_column :sentences, :gametype, :string
  end
end
