class GamesController < ApplicationController
  def index
    @games = Game.all
   if params[:search]
    @games = Game.search(params[:search]).order("created_at DESC")
  else
    @games = Game.all.order("created_at DESC")
  end
end
  
  
  
  
end