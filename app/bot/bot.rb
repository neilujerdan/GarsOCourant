require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe( 
  access_token: ENV["ACCESS_TOKEN"], 
  subscribed_fields: ['messages', 'message_deliveries']
)

Bot.on :message do |message|
    if message.text.include? 'oui' OR 'Oui' OR 'OUI'
        message.reply(text: 'Possédez vous des panneaux solaire ?')

end