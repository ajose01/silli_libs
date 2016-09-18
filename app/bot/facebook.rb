include Facebook::Messenger

Bot.on :message do |message|
puts "BOT ON"
puts message
  Bot.deliver(
    recipient: message.sender,
    message: {
      text: 'Hello, human!'
    }
  )
end
