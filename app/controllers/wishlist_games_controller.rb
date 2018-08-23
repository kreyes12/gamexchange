class WishlistGamesController < ApplicationController

  def index
    @wishlist_games = WishlistGame.all
  end

  def show
    @wishlist_game = WishlistGame.find_by_id(params[:id])
  end


end
