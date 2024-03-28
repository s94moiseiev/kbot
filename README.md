# Kbot - Telegram Bot

Kbot is a simple Telegram bot written in Go language using the telebot library.

## Links

The bot is available at: [t.me/serhiimoiseiev_bot.](https://t.me/serhiimoiseiev_bot.)

## Installation Instructions

To work with the bot, you need to have access to the Telegram API. Get your token from @BotFather and set it in the environment variable TELE_TOKEN.

```bash
read -s TELE_TOKEN
export TELE_TOKEN
```
After that, you can run the bot by executing the following commands:

```bash
go build -ldflags "-X="github.com/s94moiseiev/kbot/cmd.appVersion=1.0.3
./kbot start
```

##Usage

After launching the bot, it will be available for communication in your Telegram chat. Below are some available commands:

    /start: Begin interaction with the bot. The bot greets the user.
    hello: Send a greeting "Hello world".

##Examples

After launching the bot, you can use it in your Telegram chat as follows:

    Send the /start command to begin interacting with the bot. It greets you.
    Send the message "hello". The bot will respond with "Hello world".

