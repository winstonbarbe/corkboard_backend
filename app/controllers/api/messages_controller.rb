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
      id: @message.id,
      name: @message.user.username,
      body: @message.body,
      sent: @message.created_at
    }
    render "show.json.jb"
  end

end
