class Clip < ApplicationRecord
  has_many :playlist_clips
  has_many :playlists, through: :playlist_clips
end
