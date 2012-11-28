class Notifications < ActionMailer::Base
  default from: "thomasjyang@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.trade.subject
  #
  def trade(user)
    @greeting = user

    mail to: "thomasjyang@gmail.com", :subject   => 'New Trade Offer'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.confirmation.subject
  #
  def confirmation
    @greeting = "Hi"

    mail to: "to@example.org"
  end
end
