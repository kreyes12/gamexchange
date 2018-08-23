class WishlistsController < ApplicationController

  def index
    @wishlists = Wishlist.all
  end

  def show
    @wishlist = Wishlist.find_by_id(params[:id])
  end


end
