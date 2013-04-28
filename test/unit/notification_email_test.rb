require 'test_helper'
 
class NotificationMailerTest < ActionMailer::TestCase

tests NotificationMailer

test "notification_email" do
    
    expected = new_mail
    expected.from    = 'info@postbox.tut'
    expected.to      = 'somelist@postbox.tut'
    expected.subject = "New Notification"
    expected.date    = Time.now
  
    actual = nil
    assert_nothing_raised { actual = NotificationMailer.notification_mailer(@recipient) }
    assert_not_nil actual

    expected.message_id = 'noty@postbox'
    actual.message_id = 'noty@postbox'
    
    assert_equal expected.encoded, actual.encoded

   end
   
end

