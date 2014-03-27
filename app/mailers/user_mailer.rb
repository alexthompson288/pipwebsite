class UserMailer < ActionMailer::Base
  default from: "alex@learnwithpip.com"

  def send_teacher_link(user)
  		@user = user  	
  	 mail(:to => user.email, :subject => "Your Pip Programme download link")
  end

  def send_parent_link(user) 
  		@user = user 	
  	 mail(:to => user.email, :subject => "Your Pip Programme download link")
  end

  def new_user_update(user) 
  		@user = user 	
  	 mail(:to => 'alex@alexjbthompson.com', :subject => "New Pip Programme download link request")
  end

end
