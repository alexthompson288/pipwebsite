class ChangeSkillForLearninggames < ActiveRecord::Migration
  def change
  	rename_column :learninggames, :skill, :skillstring
  end
end
