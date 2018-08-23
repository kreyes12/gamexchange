class UserGamesController < ApplicationController

  def index
    @user_games = UserGame.all
  end

  def show
    @user_game = UserGame.find_by_id(params[:id])
  end

  def new
    @user_game = UserGame.new
  end

  def create
    @user_game = UserGame.create(user_game_params)
  end

private

def user_game_params
  params.require(:user_game).permit(:rating, :user_id, :game_id)
end

end
