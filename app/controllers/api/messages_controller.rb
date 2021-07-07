class Api::MessagesController < ApplicationController
  def index
    messages = Connection.messages
  end
end
