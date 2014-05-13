class Post < ActiveRecord::Base
	  attr_accessible :body_text, :image_url, 
  :priority_level, :subject_english, :subject_maths,
   :subject_reading, :subject_world, :title, :posttype, 
   :url, :video_url, :lilac, :pink, :red, :yellow, :blue,
   :green, :orange, :linklabel, :publishable, :order_number,
   :iphone, :ipad, :android, :mac, :pc
end
