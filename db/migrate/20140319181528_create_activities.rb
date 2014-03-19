class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
        t.string :account_username
        t.string :child_name
        t.integer  :has_completed
	    t.datetime :start
	    t.datetime :end
	    t.string   :core_skill
	    t.string   :session_identifier
	    t.string   :scene
	    t.integer  :set_num
	    t.integer  :section_id
	    t.integer  :num_answers
	    t.string   :phoneme_ids
	    t.string   :incorrect_phoneme_ids
	    t.string   :word_ids
	    t.string   :incorrect_word_ids
	    t.integer  :story_id
	    t.string   :pip_pad_calls
	    t.timestamps
    end
  end
end
