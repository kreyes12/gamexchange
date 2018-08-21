class User < ApplicationRecord
  has_many :user_games
  has_many :games, through: :user_games

  validates :name, presence: true, uniqueness: true
  validates :bio, presence:  true

  mount_uploader :avatar, AvatarUploader


end
