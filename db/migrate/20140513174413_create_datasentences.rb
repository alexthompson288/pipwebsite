class CreateDatasentences < ActiveRecord::Migration
  def change
    create_table :datasentences do |t|
      t.text :question
      t.string :correctanswer
      t.string :dummyanswer1
      t.string :dummyanswer2
      t.string :good_sentence
      t.string :bad_sentence1
      t.string :bad_sentence2
      t.string :bad_sentence3
      t.integer :pipisode_id
      t.integer :programsession_id
      t.integer :story_id
      t.integer :programmodule_id
      t.string :correct_image_name
      t.string :correct_image_url
      t.string :dummy_image1_name
      t.string :dummy_image1_url
      t.string :dummy_image2_name
      t.string :dummy_image2_url
      t.boolean :correctsentence
      t.boolean :correctword
      t.boolean :correctimage
      t.boolean :quiz
      t.text :question_french
      t.text :question_spanish
      t.text :question_mandarin
      t.string :correct_answer_french
      t.string :dummyanswer1_french
      t.string :dummyanswer2_french
      t.string :correct_answer_spanish
      t.string :dummyanswer1_spanish
      t.string :dummyanswer2_spanish
      t.string :correct_answer_mandarin
      t.string :dummyanswer1_mandarin
      t.string :dummyanswer2_mandarin
      t.string :good_sentence_french
      t.string :bad_sentence1_french
      t.string :bad_sentence2_french
      t.string :bad_sentence3_french
      t.string :good_sentence_spanish
      t.string :bad_sentence1_spanish
      t.string :bad_sentence2_spanish
      t.string :bad_sentence3_spanish
      t.string :good_sentence_mandarin
      t.string :bad_sentence1_mandarin
      t.string :bad_sentenece2_mandarin
      t.string :bad_sentence3_mandarin

      t.timestamps
    end
  end
end
