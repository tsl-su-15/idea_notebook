class IdeasController < ApplicationController
  def show
    @idea = Idea.find(params['id'])
  end

  def new

  end

  def create
    # write code to save a new idea in the database
  end
end
