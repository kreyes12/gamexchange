class WishlistGamesController < ApplicationController

  def index
    @wishlist_games = WishlistGame.all
  end

  def show
    @wishlist_game = WishlistGame.find_by_id(params[:id])
  end

  def title
    Game.all.each do |game|
      if @wishlist_game.game_id == game.id
        game.title
      end
    end
end
