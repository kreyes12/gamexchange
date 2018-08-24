class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :user_games
  has_many :game_consoles
  has_many :consoles, through: :game_consoles
  belongs_to :genre
  has_many :wishlist_games

  def self.search(search)
    where("genre_id LIKE ?", "%#{search}")
  end

end
