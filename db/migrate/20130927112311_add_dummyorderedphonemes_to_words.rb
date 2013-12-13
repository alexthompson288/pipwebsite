class AddDummyorderedphonemesToWords < ActiveRecord::Migration
  def change
    add_column :words, :dummyorderedphonemes, :text
  end
end
