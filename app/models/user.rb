class User < ApplicationRecord
  has_secure_password

  has_many :playlists
  validates :email, uniqueness: { case_sensitive: false }
end
