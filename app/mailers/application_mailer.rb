class ApplicationMailer < ActionMailer::Base
  default from: "from@example.com"
  layout 'mailer'

  def payment_recd(user)
    @user = user
    @order = order
    mail(to: @user.email, subject: "You order payment has been received")
  end

end

# where to place this?
# ApplicationMailer.payment_recd(@user)
