class ChatsController < ApplicationController
  before_action :authenticate_user!

  def index
    @chats = Chat.all
  end

  def new
    @chat = Chat.new
  end

  def create
    @chat = current_user.chats.create(chat_params)
    if @chat.valid?
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def chat_params
    params.require(:chat).permit(:message, :user_id, :chat_receiver)
  end
end
