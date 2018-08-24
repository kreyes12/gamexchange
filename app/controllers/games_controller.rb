class GamesController < ApplicationController

  def index
    if params[:game] and params[:game][:genre_id]
      @games = Game.search(params[:game][:genre_id])
    else
    @games = Game.all
      #if params[:query]
      #  @games = Game.select {|game| game.genre.name == params[:query]}
      #else
      #  @games = Game.all
      end
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

private

def game_params
  params.require(:game).permit(:title, :year_released, :genre_id)
end
