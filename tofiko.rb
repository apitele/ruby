#tofiko

require 'telegram/bot'

Telegram::Bot::Client.run('392692529:AAHTdQWaA0ot76ilchZwtHPnC4z0T1PTWrk') do |bot|
  bot.listen do |message|
case message.text
  when '/start', '/start@Tofikobot'
   bot.api.sendMessage(chat_id: message.chat.id, text: "اهلا, @#{message.from.username} ")
  when '/stop'
   bot.api.sendMessage(chat_id: message.chat.id, text: "باي, @#{message.from.username}")
   when '/me'
     bot.api.send_message(chat_id: message.chat.id, text: " user : @#{message.from.username} \n id : #{message.from.id} \n First name : #{message.from.first_name} \n Last name : #{message.from.last_name}")
end
  end
  end
  
  #tofiko
