class AddMneumonicTwo < ActiveRecord::Migration
  def up
	add_column :phonemes, :mneumonic_two, :string
  end

  def down
  end
end
