class AddGameprogresstypeToSections < ActiveRecord::Migration
  def change
    add_column :sections, :gameprogresstype, :string
  end
end
