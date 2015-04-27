ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
    :address                =>'smtp.sendgrid.net',
    :port                   =>'587',
    :authentication         =>:plain,
    :enable_starttls_auto   => true
    
}
    