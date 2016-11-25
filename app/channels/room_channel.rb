# Be sure to restart your server when you modify this file. Action Cable runs in a loop that does not support auto reloading.
class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from "room_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak
    puts "room_channel.speak in"
    next_count = Message.find_by(id: 1).content.to_i + 1
    message = Message.find_by(id: 1)
    message.update(content: next_count)
    MessageBroadcastJob.perform_later(message)
  end
end
