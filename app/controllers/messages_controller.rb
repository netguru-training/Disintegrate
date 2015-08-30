class MessagesController < ApplicationController
  before_action :authenticate_user!

  expose(:users) { User.where.not(id: current_user.id) }
  expose_decorated(:messages) { current_user.received_messages }
  expose_decorated(:message, attributes: :message_params)


  def create
    self.message.sender = current_user
    if message.save
      redirect_to action: "show", user_id: message.receiver.id
    else
      render :new
    end
  end

  def new
  end

  def show
   self.messages = Message.by_users(params[:user_id], current_user.id).order('created_at desc')
  end

  def message_params
    params.require(:message).permit(:title, :content, :sender_id, :receiver_id, :is_read)
  end

end
