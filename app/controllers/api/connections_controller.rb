class Api::ConnectionsController < ApplicationController
  def index
    connections = current_user.connections
    render json: {connections:  current_user}
  end
end
