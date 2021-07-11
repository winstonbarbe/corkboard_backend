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

  def update
    @connection = current_user.connections.find_by(id: params[:id])
    @connection.status = params[:status] || @connection.status
    if @connection.save
      render "show.json.jb", status: 200
    else
      render json: { errors: @connection.errors }, status: 404
    end
  end
  
end
