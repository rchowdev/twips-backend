class User < ApplicationRecord
  has_secure_password

  validates :username, :email, uniqueness: { case_sensitive: false }
  validates :username, :email, :first_name, :last_name, presence: true
end
