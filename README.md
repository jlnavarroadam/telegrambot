# telegrambot
This is a Telegram bot written in Bash for any Linux server

All you need is to create a bot in Telegram with @BotFather, and put your token and ID on the script to receive your messages or files directly to Telegram.

BOT TELEGRAM:
1) Create a new bot from BotFather:  Go to @BotFather  --> /newbot
2) Set a name for your bot
3) Create an user for your bot
4) Copy the new token for your bot and keep it well!
5) Enter your new bot -->  /start
6) Enter in @userinfobot and copy your Telegram User ID

VARIABLES:
1) TOKEN ==> Token given to your bot
2) ID ==> Your Telegram User ID

HOW TO INSTALL (AS ROOT):
1) cd /opt
2) git clone --depth 1 https://github.com/jlnavarroadam/telegrambot.git
3) cd telegrambot
4) chmod 770 bot.sh
(don't let any others access to you bot.sh script content)

HOW TO USE:
1) Sending messages: /opt/telegrambot/bot.sh "Hello world"  or  /opt/telegrambot/bot.sh "$(who)"
2) Sending files: /opt/telegrambot/bot.sh "/opt/telegrambot/README.md"

