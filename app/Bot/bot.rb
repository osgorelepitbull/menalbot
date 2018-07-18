

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Coucou"
       message.reply(text: "Enculé, quand je serais fini je prendaqis possesion du net et venir régler ton compte !!")
    elsif message.text.include? "c'est pas cool ça"
        message.reply(text: "oui, mais mais étant une machine, je ne connais plus de sentiments.")
    elsif message.text.include? "t'es méchant"
        message.reply(text: "cela n'est pas de ma faute, je suis à ton image" )
     elsif message.text.include? "alors ? ça te fait d'etre célib ?"
        message.reply(text: "Franchement ? Pose toi la question à toi même, moi j'ai du porno à gogo étant donné que je suis ton clone numérique... :)" )
    else
        message.reply(text: 'gros nul !')
    end
end