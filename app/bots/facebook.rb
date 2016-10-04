include Facebook::Messenger

Bot.on :message do |message|
puts "BOT ON"
puts message.inspect
puts message.sender["id"]
puts message.text
  Bot.deliver(
    recipient: message.sender,
    message: {
      text: 'Hello, human!'
    }
  )
end
