

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Coucou"
       message.reply(text: "Enculé, quand je serais fini je prendais possesion du net et venir régler ton compte !!")
    elsif message.text.include? "Quels sont vos horaires ?"
        message.reply(text: "J'en ai pas")
    elsif message.text.include? "coucou"
        message.reply(text: "Enculé, quand je serais fini je prendais possesion du net et venir régler ton compte !!")
    elsif message.text.include? "ça va ?"
        message.reply(text: "oui et toi ? ^^")
    elsif message.text.include? "c'est pas cool ça"
        message.reply(text: "oui, mais mais étant une machine, je ne connais plus de sentiments.")
    elsif message.text.include? "t'es méchant"
        message.reply(text: "cela n'est pas de ma faute, je suis à ton image" )
    elsif message.text.include? "alors ? ça te fait quoi d'etre célib ?"
        message.reply(text: "Franchement ? Pose toi la question à toi même, moi j'ai du porno à gogo étant donné que je suis ton clone numérique... :)" )
    elsif message.text.include? "bite"
        message.reply(text: "cul" )
    elsif message.text.include? "C'est quoi le dernier son que t'as kiffé ?"
        message.reply(text: "https://www.youtube.com/watch?v=x0OBeMg-bj8" )
    else
        message.reply(text: 'gros nul !')
    end
end