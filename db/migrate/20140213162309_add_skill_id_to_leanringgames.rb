class AddSkillIdToLeanringgames < ActiveRecord::Migration
  def change
    add_column :learninggames, :skill_id, :integer
  end
end
