class UsersController < ApplicationController
<<<<<<< HEAD
=======

>>>>>>> refs/remotes/origin/master

  def index
    @users = User.all
  end

  def show
    @user = User.find_by_id(params[:id])
  end
<<<<<<< HEAD

=======
>>>>>>> refs/remotes/origin/master
end
