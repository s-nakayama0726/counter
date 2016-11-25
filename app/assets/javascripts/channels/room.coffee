App.room = App.cable.subscriptions.create "RoomChannel",
  connected: ->
    # Called when the subscription is ready for use on the server

  disconnected: ->
    # Called when the subscription has been terminated by the server

  received: (data) ->
    $('#messages').html data['data']

  speak: ->
    @perform 'speak'

$(document).on 'click', '#test_button', (event) ->
  App.room.speak()