class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def notify_email(post)
    mail(:to => user.email,
         :subject => 'test post')
  end
end
