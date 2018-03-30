class GamesController < ApplicationController
  def index
    @games = Game.all
    @games = Game.search(params[:name], params[:page])
end
end