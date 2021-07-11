class Api::ConnectionsController < ApplicationController
  def index
    @pending_connections = current_user.pending_connections
    @accepted_connections = current_user.accepted_connections
    render "index.json.jb"
  end

  def show
    @connection = current_user.connections.find_by(id: params[:id])
    render "show.json.jb"
  end
end
