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

end
