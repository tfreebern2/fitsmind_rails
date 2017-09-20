class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def find_user_id
    @user = User.find_by_id(params[:id])
  end

  def match_receiver_id(find_user_id)
    @chat = Chat.find_by_id(params[:id])
    @chat_receiver = @chat.chat_receiver
    if @chat_receiver == @user
      @chat.receiver_email = @user.email
    end
  end

  def match_sender_id(find_user_id)
    @chat = Chat.find_by_id(params[:id])
    @chat_sender = @chat.user_id
    if @chat_sender == @user
      @chat.sender_email = @user.email
    end
  end
end
