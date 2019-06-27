require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe( 
  access_token: ENV["ACCESS_TOKEN"], 
  subscribed_fields: ['messages', 'message_deliveries']
)

Bot.on :message do |message|
  message.reply(text: 'Bienvenue sur SunCherBot, souhaitez-vous des conseils pour mieux consommer votre énergie solaire ?')
end