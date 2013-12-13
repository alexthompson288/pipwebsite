class AddObjectiveToProgramunits < ActiveRecord::Migration
  def change
    add_column :programunits, :objective, :string
  end
end
