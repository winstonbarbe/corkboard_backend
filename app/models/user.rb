class User < ApplicationRecord
  has_secure_password
  validates :email, :username, presence: true, uniqueness: true
  has_many :connections
  has_many :messages
end
