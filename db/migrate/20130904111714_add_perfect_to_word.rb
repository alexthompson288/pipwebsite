class AddPerfectToWord < ActiveRecord::Migration
  def change
    add_column :words, :perfect, :boolean
  end
end
