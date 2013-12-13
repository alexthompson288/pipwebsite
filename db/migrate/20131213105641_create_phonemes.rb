class CreatePhonemes < ActiveRecord::Migration
  def change
    create_table :phonemes do |t|
	    t.string   :phoneme
	    t.timestamps
	    t.boolean  :imagepossible
	    t.string   :mneumonic
	    t.boolean  :completed
	    t.string   :mneumonic_two
	    t.string   :grapheme
	    t.integer  :setnumber
	    t.integer  :phonemeorder
    end
  end
end
