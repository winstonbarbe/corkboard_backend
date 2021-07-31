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

  def potential_connections
    users = User.all 
    potential_users = []
    users.each do |user|
     unless my_connections.include?(user.id) 
      potential_users << user
     end
    end
    potential_users.delete(User.find(id))
    return potential_users
  end

  def my_connections
    # _connections = [
    connections.map do |connection|
      if connection.sender_id == id 
        connection.recipient_id
      else 
        connection.sender_id
      end
    end
  end
end
