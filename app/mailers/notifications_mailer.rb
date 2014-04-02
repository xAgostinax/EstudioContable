class NotificationsMailer < ActionMailer::Base

  default :from => "noreply@youdomain.dev"
  default :to => "agostina_rodriguez@hotmail.com"

  def new_message(message)
    @message = message
    mail(:subject => "[fcestudiocontable.com.ar] #{message.subject}")
  end

end
