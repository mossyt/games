if Rails.env.development?
    
ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
     :address => "smtp.gmail.com",
     :port => 587,
     :user_name => "mossymailer@gmail.com",
     :password => "Aberdeen199",
     :authentication => :plain,
     :enable_starttls_auto => true
}

elsif Rails.env.production?

ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
  :address => "smtp.gmail.com",
  :port => 587,
  domain:       'heroku.com',
  :user_name => "mossymailer@gmail.com",
  :password => "Aberdeen199",
  :authentication => :plain,
  :enable_starttls_auto => true
}

end