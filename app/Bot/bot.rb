

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Coucou"
       message.reply(text: 'Enculé, quand je serais fini je prendaqis possesion du net et venir régler ton compte !!')
    elsif message.text.include? "bonjour"
        message.reply(text: 'Enculé, quand je serais fini je prendaqis possesion du net et venir régler ton compte !!')
    else
        message.reply(text: 'gros nul !')
    end
end