class Messenger < ActionMailer::Base
  default from: "kellybhoward@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.messenger.gmail_message.subject
  #
  def gmail_message(message)
    @message = message
    mail(to: "kellybhoward@gmail.com", subject: "Portfolio Request: #{@message[:reason]}")
  end
end
