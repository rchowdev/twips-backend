class Playlist < ApplicationRecord

  has_many :playlist_clips, dependent: :destroy
  has_many :clips, through: :playlist_clips
  belongs_to :user
end
