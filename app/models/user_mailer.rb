class UserMailer < ActionMailer::Base

  def send_mail(user, mail_subject, message_body)
    recipients user.email
    from "Ilmo2 admin"
    subject mail_subject
    body :user => user, :message_body => message_body
  end

end
