class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(
      connection_id: params[:connection_id],
      user_id: current_user.id,
      body: params[:body],
      read: false,
    )
    @message.save

    ActionCable.server.broadcast "messages_channel", {
      {
        id: @message.id,
        body: @message.body,
        read: @message.read,
        sent: @message.created_at,
        user: {
          {
            id: @message.user.id,
            username: @message.user.username,
            name: @message.user.name,
            email: @message.user.email,
            current_location: @message.user.current_location,
            bio: @message.user.bio,
            image_url: @message.user.image_url
          }
        }
      }
    }
    
    render json: {message: @message}
  end

end
