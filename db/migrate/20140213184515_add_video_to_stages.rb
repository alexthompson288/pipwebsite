class AddVideoToStages < ActiveRecord::Migration
  def change
    add_column :stages, :video, :text
  end
end
