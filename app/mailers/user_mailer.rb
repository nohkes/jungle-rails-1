class UserMailer < ApplicationMailer

  def welcome_email(order)
    @order = order
    mail(to: 'random@email.com', subject: "Your order id is #{order.id}")
  end
end
