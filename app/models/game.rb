class Game < ApplicationRecord
  has_many :user_games
  has_many :users, through: :games
  has_many :game_consoles
  has_many :consoles, through: :game_consoles
  belongs_to :genre
end
