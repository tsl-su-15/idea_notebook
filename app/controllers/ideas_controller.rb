class IdeasController < ApplicationController
  def show
    @idea = Idea.find(params['id'])
  end

  def new
    @idea = Idea.new
  end

  def create
    # don't create a new idea if the user input is blank
    @idea = Idea.new
    @idea.desc = params['desc']

    if @idea.save
      redirect_to "/ideas/#{@idea.id}"
    else
      render 'new'
    end

  end

  def destroy
    @idea = Idea.find(params['id'])
    @idea.destroy

    redirect_to "/ideas"
  end

  def edit
    @idea = Idea.find(params['id'])
  end

  def update
    @idea = Idea.find(params['id'])
    @idea.desc = params['desc']

    if @idea.save
      redirect_to "/ideas/#{@idea.id}"
    else
      render 'edit'
    end
  end

  def index
    @ideas = Idea.all
  end
end








