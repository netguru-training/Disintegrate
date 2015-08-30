class CommentsController < ApplicationController
  before_action :authenticate_user!

  expose_decorated(:comments)
  expose_decorated(:comment, attributes: :comment_params)

  def create
    if comment.save
      # redirect_to action: "show", user_id: message.receiver.id
      redirect_to advertisement_path(comment.advertisement_id)
    else
      render :new
    end
  end

  def new
  end

  def show
    # binding.pry
    self.comment = Comment.new
    self.comments = Comment.where(advertisement_id: params[:id]).order('created_at desc')
  end

  def comment_params
    params.require(:comment).permit(:content, :user_id, :advertisement_id)
  end

end
