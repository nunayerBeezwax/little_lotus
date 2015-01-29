Rails.application.config.action_mailer.smtp_settings = {
  address:              'smtp.gmail.com',
  port:                 587,
  domain:               'littlelotuspdx.com',
  user_name:            GMAIL_CONFIG["username"],
  password:             GMAIL_CONFIG["password"],
  authentication:       'plain',
  enable_starttls_auto: true  
}