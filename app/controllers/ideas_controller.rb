class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  def show
    @comments = Comment.where(:idea_id => @idea.id)
    @comment = Comment.new

    respond_to do |format|
      format.html { render 'show' }
      format.json { render json: @idea}
    end
  end

  def new
    @idea = Idea.new
  end

  def create
    # don't create a new idea if the user input is blank
    @idea = Idea.new(idea_params)

    respond_to do |format|
      if @idea.save
        format.html { redirect_to ideas_url }
        format.js { render 'create' }
      else
        format.html { render 'new' }
      end
    end

  end

  def destroy
    @idea.destroy

    redirect_to ideas_url
  end

  def edit
  end

  def update
    if @idea.update_attributes(idea_params)
      redirect_to idea_url(@idea.id)
    else
      render 'edit'
    end
  end

  def index
    @ideas = Idea.all
    @idea = Idea.new

    respond_to do |format|
      format.html { render 'index' }
      format.json { render json: @ideas}
    end
  end

  private

    def set_idea
      @idea = Idea.find(params['id'])
    end

    def idea_params
      params.require(:idea).permit(:desc)
    end


end








