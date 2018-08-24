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

  def available_copies
    matched_games = UserGame.all.select {|user_game| user_game.game_id == self.id}
    available_games = matched_games.map {|user_game| user_game.available == true}
    available_games.size
  end


end
