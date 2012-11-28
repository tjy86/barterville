require 'test_helper'

class NotificationsTest < ActionMailer::TestCase
  test "trade" do
    mail = Notifications.trade
    assert_equal "Trade", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

  test "confirmation" do
    mail = Notifications.confirmation
    assert_equal "Confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
