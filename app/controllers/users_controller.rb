class UsersController < ApplicationController
<<<<<<< HEAD

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end
  
=======
  def show
    @user = User.find(params[:id])
  end
>>>>>>> 0c45fbff4b067e65609c2f316071d0b9d456a099
end
