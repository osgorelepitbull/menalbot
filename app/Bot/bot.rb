

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Coucou"
       message.reply(text: 'Enculé, quand je serais fini je prendaqis possesion du net et venir régler ton compte !!')
    elsif message.text.include? "c'est pas cool ça"
        message.reply(text: 'oui, mais mais étant une machine, je ne connais plus de sentiments.')
    else
        message.reply(text: 'gros nul !')
    end
end