class Api::CommentsController < ApplicationController
  def index
    @comments = Comment.where(params[:todo_id])
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      render "api/comments/show"
    else
      render json: @comment.errors.full_messages, status: 422
    end
  end
end
