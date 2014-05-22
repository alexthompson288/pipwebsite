class Storypage < ActiveRecord::Base

	attr_accessible :story_id, :text, :image, :audio, :pageorder, :frenchtext, :spanishtext, :mandarintext, :germantext

end
