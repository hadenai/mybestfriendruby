require 'facebook/messenger'
require_relative './verification_provider'
include Facebook::Messenger

Facebook::Messenger.configure do |config|
  config.provider = FacebookVerificationProvider.new
end

Faceboook::Messenger::Bot.on :message do |message|
  message.reply(text: 'Hello, human!')
end