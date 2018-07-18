

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Coucou"
       message.reply(text: 'TG !!!')
    elsif message.text.include? "bonjour" "salut" "ca va"
        message.reply(text: 'Enculé, quand je serais fini je prendaqis possesion du net et venir régler ton compte !!')
    end
end