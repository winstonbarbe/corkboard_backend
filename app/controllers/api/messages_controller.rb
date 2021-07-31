class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(
      connection_id: params[:connection_id],
      user_id: current_user.id,
      body: params[:body],
      read: false,
    )
    if @message.save
      ActionCable.server.broadcast "messages_channel", {
        id: @message.id,
        read: @message.read,
        body: @message.body,
        sent: @message.created_at,
        user: {
          bio: current_user.bio,
          current_location: current_user.current_location,
          email: current_user.email,
          id: current_user.id,
          image_url: current_user.image_url,
          name: current_user.name,
          username: current_user.username,
        }
      }
      render "show.json.jb"
    else
      render json: { errors: @message.errors.full_messages }, status: 422
    end
  end

end
