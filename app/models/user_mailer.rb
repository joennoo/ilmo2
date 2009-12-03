class UserMailer < ActionMailer::Base

  def admin_mail(user_id, mail_subject, message_body)
    user = User.find(user_id)
    recipients user.email
    from "Ilmo2 admin"
    subject mail_subject
    body :user => user, :message_body => message_body
  end

end
