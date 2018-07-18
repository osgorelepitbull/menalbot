

require 'facebook/messenger'

include Facebook::Messenger

Facebook::Messenger::Subscriptions.subscribe(access_token: ENV["ACCESS_TOKEN"])

Bot.on :message do |message|
    if message.text.include? "Bonjour"
       message.reply(text: 'TG !!!')
    elsif message.text.include? "bonjour" "salut"
        message.reply(text: 'TG !!!')
    end
end