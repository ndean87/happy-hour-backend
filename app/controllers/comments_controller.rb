class CommentsController < ApplicationController

  def index
    @comments = Comment.all
    render json: @comments
  end

  def create
    @comment = Comment.create(comments: params[:comments], user_name: params[:user_name], venue_id: params[:venue_id] )
    render json: @comment
  end


end
