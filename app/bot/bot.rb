require 'facebook/messenger'
include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe( 
  access_token: ENV["ACCESS_TOKEN"], 
  subscribed_fields: ['messages', 'message_deliveries']
)

Bot.on :message do |message|

  #consoEnergie = 0
  message.typing_on
   
  message.reply(text: "Bienvenue sur SunCherBot, shouaitez vous des conseil pour mieux consommé votre énérgies solaire ?")
  
  /if message.text.include? "oui" ?: "Oui" ?: "OUI"
      message.reply(text: "Possédez vous des panneaux solaire ?")
  elsif message.text.include? "NON" ?: "Non" ?: "non"
      message.reply(text: "D'accord n'hésitez a revenir me voir plus tard.")
  else 
      message.reply(text: "je n'ai pas compris ta réponse")
  end

  if message.text.include? "oui" ?: "Oui" ?: "OUI"
      message.reply(text: "Possédez vous un ou des appareil suivant ? 
      Un four éléctrique, une plaque éléctrique, une machine a lavez, un lave vaiselle, un sèche linge.")
  elsif message.text.include? "NON" ?: "Non" ?: "non"
      message.reply(text: "Vous avez la possibilité de produire et partagez votre électricité à travers le réseau public 
      et faire une économie sur le cout de votre énérgie d'environ 30% grace au service SunShare. 
      Vous pouvez consultez leur site web pour plus d'information -> https://www.sunshare.fr")
  else 
      message.reply(text: "je n'ai pas compris ta réponse")
  end
  
  appareil = message.text

  message.reply(text: "Quand utilisez vous vos appareil habituellement ? Le matin, le midi, le soir")

  utilisation = message.text

 # if message.text.include? "four electrique" ?: "four éléctrique" ?: "Four éléctrique" ?: "Four electrique"
      consoEnergie = consoEnergie + /

end