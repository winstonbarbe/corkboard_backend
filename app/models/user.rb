class User < ApplicationRecord
  has_many :connections
  has_many :messages
end
