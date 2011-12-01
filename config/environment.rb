# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Depot::Application.initialize!

Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings ={
      address: "stmp.gmail.com",
      port: 587,
      domain: "domain.of.sender.net",
      authentication: "plain",
      user_name: "zaracato",
      password: "Gr1ll1t0",
      enable_starttls_auto: true



  }
end

