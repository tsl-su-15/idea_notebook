class IdeasController < ApplicationController
  before_action :set_idea, only: [:show, :edit, :update, :destroy]

  def show
    @comments = Comment.where(:idea_id => @idea.id)
    @comment = Comment.new
  end

  def new
    @idea = Idea.new
  end

  def create
    # don't create a new idea if the user input is blank
    @idea = Idea.new
    @idea.desc = params['desc']

    if @idea.save
      redirect_to idea_url(@idea.id)
    else
      render 'new'
    end

  end

  def destroy
    @idea.destroy

    redirect_to ideas_url
  end

  def edit
  end

  def update
    @idea.desc = params['desc']

    if @idea.save
      redirect_to idea_url(@idea.id)
    else
      render 'edit'
    end
  end

  def index
    @ideas = Idea.all
  end

  private

    def set_idea
      @idea = Idea.find(params['id'])
    end


end








