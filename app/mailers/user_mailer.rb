class UserMailer < ApplicationMailer
  default from: 'dotzenrodm@gmail.com'

  def payment_confirm(user, order)
    @user = user
    @order = order
    mail(to: @user.email, subject: "You order has been received")
  end

end
