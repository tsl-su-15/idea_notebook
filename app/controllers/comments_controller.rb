class CommentsController < ApplicationController
  before_action :set_comment, only: [:show, :edit, :update, :destroy]

  def index
    @comments = Comment.all

    respond_to do |format|
      format.html
      format.json { render json: @comments}
    end
  end

  def show
    @idea = Idea.find(@comment.idea_id)

    respond_to do |f|
      f.html
      f.json {render json: @comment}
    end
  end

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
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
    @comment.user_id = current_user.id

    if @comment.update_attributes(comment_params)
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

    def comment_params
      params.require(:comment).permit(:contents, :idea_id)
    end
end
