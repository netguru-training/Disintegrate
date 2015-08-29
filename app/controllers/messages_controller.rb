class MessagesController < ApplicationController
  before_action :authenticate_user!

  expose(:users) { User.where.not(id: current_user.id) }
  expose(:messages) { current_user.received_messages }
  expose(:message, attributes: :message_params)

  def create
    self.message.sender = current_user
    if message.save
      redirect_to root_path
    else
      render :new
    end
  end

  def new
  end

  def message_params
    params.require(:message).permit(:title, :content, :sender_id, :receiver_id, :is_read)
  end

end
