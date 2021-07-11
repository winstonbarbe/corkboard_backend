class Api::ConnectionsController < ApplicationController
  def index
    @pending_connections = current_user.pending_connections
    @accepted_connections = current_user.accepted_connections
    render "index.json.jb"
  end

  def create
    # Need to make it so default of status is set to zero
    # Need to make sure duplicates can't happen
    # Potentially we need to include the other users information when creating
    @connection = Connection.new(
      sender_id: current_user.id,
      recipient_id: params[:recipient_id],
      status: 0
    )
    if @connection.save
      render "show.json.jb", status: 201
    else
      render json: { errors: @connections.errors }, status: 404
    end
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

  def destroy
    connection = current_user.accepted_connections.find(params[:id])
    render json: { message: "No longer connected to this user" }
  end

end
