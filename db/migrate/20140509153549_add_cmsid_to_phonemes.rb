class AddCmsidToPhonemes < ActiveRecord::Migration
  def change
    add_column :phonemes, :cms_id, :integer
    add_column :pipisodes, :cms_id, :integer
    add_column :sentences, :cms_id, :integer
  end
end
