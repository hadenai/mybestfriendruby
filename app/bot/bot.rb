require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(
    access_token: ENV["MESSENGER_ACCESS_TOKEN"],
    subscribed_fields: %w[leadgen]
  )

Faceboook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end