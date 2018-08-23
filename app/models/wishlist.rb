class Wishlist < ApplicationRecord
  belongs_to :user
  has_many :wishlist_games
end
