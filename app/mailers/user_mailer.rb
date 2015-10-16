class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def payment_confirm(user)
    @user = user
    @order = order
    mail(to: @user.email, subject: "You order has been received")
  end

end
