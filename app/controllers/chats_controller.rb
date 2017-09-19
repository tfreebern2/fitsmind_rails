class ChatsController < ApplicationController
  def index
  end

  def new
    @chat = Chat.new
  end

  def create
  end
end
