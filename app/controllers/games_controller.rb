class GamesController < ApplicationController

  def index
    @games = Game.all
#  if params[:query]
#  @games = Game.select {|game| game.genre.name == params[:query]}
#else
#  @games = Game.all
#    end
#  end
end

  def show
    @game = Game.find_by_id(params[:id])
  end

  def add_to_wishlist
    @game = Game.find_by_id(params[:id])
    WishlistGame.create({game_id: @game.id, user_id: current_user.id})
    redirect_to wishlist_path(current_user)
  end

end
