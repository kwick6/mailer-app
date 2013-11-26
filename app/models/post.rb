class Post < ActiveRecord::Base
  has_one :user

  after_create :send_email

  def send_email
    UserMailer.notify_email(user).deliver
  end
end
