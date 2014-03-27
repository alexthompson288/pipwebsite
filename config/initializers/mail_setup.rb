ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "learnwithpip.com",
  :user_name            => "alex@learnwithpip.com",
  :password             => "JoeCole10",
  :authentication       => "plain",
  :enable_starttls_auto => true
}