class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :url
      t.text :video_url
      t.string :image_url
      t.text :body_text
      t.string :type
      t.boolean :subject_reading
      t.boolean :subject_maths
      t.boolean :subject_world
      t.boolean :subject_english
      t.integer :priority_level
      t.boolean :lilac
      t.boolean :pink
      t.boolean :red
      t.boolean :yellow
      t.boolean :blue
      t.boolean :green
      t.boolean :orange
      t.string :linklabel
      t.boolean :publishable
      t.integer :order_number

      t.timestamps
    end
  end
end
