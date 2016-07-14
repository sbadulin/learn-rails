class ApplicationMailer < ActionMailer::Base
  default from: Rails.application.secrets.owner_email
  layout 'mailer'
end
