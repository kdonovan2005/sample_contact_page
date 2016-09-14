class MessageMailer < ApplicationMailer
  default from: "TESTEMAIL"
  default to: "TESTEMAIL"

  def send_message(message)
    @message = message

    mail subject: "Message from #{message.name}"
  end
end
