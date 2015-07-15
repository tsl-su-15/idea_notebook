class IdeasController < ApplicationController
  def show
    @idea = Idea.find(params['id'])
  end

  def new

  end

  def create
    @idea = Idea.new
    @idea.desc = params['desc']
    @idea.save

    redirect_to "/ideas/#{@idea.id}"
  end
end



