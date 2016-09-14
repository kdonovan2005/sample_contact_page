class MessagesController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)

    if @message.valid?
      MessageMailer.send_message(@message).deliver
      puts "message sent"
      redirect_to root_path
      puts "redirected"
    else
      render :new
      puts "didn't send"
    end
  end

  private

  def message_params
    params.require(:message).permit(:name, :email, :content, :subject)
  end

end
