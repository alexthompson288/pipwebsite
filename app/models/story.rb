class Story < ActiveRecord::Base

	attr_accessible :title, :storycoverartwork, :storyset_id, 
	:programmodule_id, :author, :description, :storytype, :publishable,
	 :title_french, :title_spanish, :title_mandarin, :description_french, 
	 :description_spanish, :description_mandarin, :extra_activities, 
	 :extra_activities_french, :extra_activities_spanish, :extra_activities_mandarin, :cms_id
	 
end
