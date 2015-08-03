class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all


  end

  def show
    @idea = Idea.find(@comment.idea_id)
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new
    @comment.contents = params[:contents]
    @comment.idea_id = params[:idea_id]
    @comment.user_id = current_user.id

    if @comment.save
      redirect_to :back, :notice => "Comment created successfully."
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    @comment.contents = params[:contents]
    @comment.idea_id = params[:idea_id]

    if @comment.save
      redirect_to comment_url(@comment.id), :notice => "Comment updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy

    redirect_to comments_url, :notice => "Comment deleted."
  end

  private

    def set_comment
      @comment = Comment.find(params[:id])
    end
end
