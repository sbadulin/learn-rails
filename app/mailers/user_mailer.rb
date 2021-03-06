class UserMailer < ApplicationMailer
  # default from: "do-not-reply@example.com"

  def contact_email(contact)
    @contact = contact
    # метод генерации вью для емейл
    mail(
      from: Rails.application.secrets.owner_email,
      to: Rails.application.secrets.personal_owner_email,
      subject: "Website Contact"
    )
  end
end
