class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat_sender = current_user.chats.create(chat_params)


  end

  private

  def chat_params
    params.require(:chat).permit(:message, :user_id, :chat_receiver, :chat_sender)
  end
end
