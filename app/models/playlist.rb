class Playlist < ApplicationRecord
  has_many :playlist_clips
  has_many :clips, through: :playlist_clips
end
