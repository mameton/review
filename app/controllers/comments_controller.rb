class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to root_path
    else
      render :index
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.destroy
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    comment = Comment.find(params[:id])
    if comment.update(comment_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def comment_params
    params.permit(:message, :point_id, :age_id).merge(user_id: current_user.id, item_id: params[:item_id])
  end
end

