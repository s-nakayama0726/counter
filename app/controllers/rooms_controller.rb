class RoomsController < ApplicationController
  def show
    @messages = Message.find_by(id: 1)
    message = Message.find_by(id: 1)
    message.content = 1
    message.save
  end
end
