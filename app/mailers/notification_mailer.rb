class NotificationMailer < ActionMailer::Base
  default(:from => "info@postbox.tut", :to=>"somelist@postbox.tut")
  
  def notification_mailer(notification)
    @notification = notification
    @url  = "http://postbox.tut/"
    mail(:subject => "New Notification")
  end
end