require 'telegram/bot'

token = '1407248820:AAF3aSx6WGfGQqWSfDx6odMpDEiZzUsCE2I'

class Bot
  Telegram::Bot::Client.run(token) do |bot|
    bot.listen do |message|
      case message.text
      when '/start'
        bot.api.send_message(chat_id: message.chat.id, text: "Hello, #{message.from.first_name}")
      when '/stop'
        bot.api.send_message(chat_id: message.chat.id, text: "Bye, #{message.from.first_name}")
      end
    end
  end
end

