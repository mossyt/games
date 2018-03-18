class GamesController < ApplicationController
  def index
    @games = Game.all
    @games = Games.search(params{:search})
  end

end