class User < ApplicationRecord
  has_secure_password
  validates :email, :username, presence: true, uniqueness: true
  has_many :connections
  has_many :messages

  def connections
    Connection.where("sender_id = ? OR recipient_id = ?", id, id)
  end

  def accepted_connections
    connections.where("status = 1")
  end

  def pending_connections
    connections.where("status = ? AND recipient_id = ?", 0, id)
  end
end
