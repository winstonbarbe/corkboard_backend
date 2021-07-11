class Api::MessagesController < ApplicationController
  def create
    @message = Message.new(
      connection_id: params[:connection_id],
      user_id: current_user.id,
      body: params[:body]
    )
    if @message.save
      render json: {message: @message}
    end
  end

  def index
    @message = Message.all
    render json: {messages: @message}
  end


end
