class AddSkillidToLearninggames < ActiveRecord::Migration
  def change
    add_column :learninggames, :emptycolumn, :integer
  end
end
