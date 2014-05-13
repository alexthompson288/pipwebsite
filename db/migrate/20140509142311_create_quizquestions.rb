class CreateQuizquestions < ActiveRecord::Migration
  def change
    create_table :quizquestions do |t|
      t.text :question
      t.string :correctanswer
      t.string :dummyanswer1
      t.string :dummyanswer2
      t.integer :pipisode_id
      t.integer :programsession_id
      t.integer :story_id
      t.integer :porgrammodule_id
      t.string :image
      t.datetime :created_at
      t.datetime :updated_at
      t.text :question_french
      t.text :question_spanish
      t.text :question_mandarin
      t.string :correct_answer_french
      t.string :correct_answer_spanish
      t.string :correct_answer_mandarin
      t.string :dummyanswer1_french
      t.string :dummyanswer1_spanish
      t.string :dummyanswer1_mandarin
      t.string :dummyanswer2_french
      t.string :dummyanswer2_spanish
      t.string :dummyanswer2_mandarin

      t.timestamps
    end
  end
end
