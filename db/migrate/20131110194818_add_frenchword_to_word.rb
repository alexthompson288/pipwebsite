class AddFrenchwordToWord < ActiveRecord::Migration
  def change
    add_column :words, :frenchword, :string
    add_column :words, :spanishword, :string
    add_column :words, :mandarinword, :string
    add_column :words, :germanword, :string
  end
end
