# foobara-discord-api
This gem provides an easy way to use the Discord API via Foobara commands.

Specifically, the gem is a Foobara wrapper around Discord's **Create Message** endpoint whose implemented command is `Foobara::DiscordApi::CreateMessage`. It sends a string and returns a typed `Foobara::DiscordApi::Message`.

## Installation

**NOTE**: Ensure you have `Ruby 3.4` or newer installed on your machine before running the commands in this section.

Install `foobara-discord-api` gem as a standalone gem in the terminal:

    `$ gem install foobara-discord-api`

OR: Install it into your existing application with bundler:

    `$ bundle add foobara-discord-api`

## Usage

### Discord setup and credentials

To use the `foobara-discord-api` gem, you'll need a Discord bot/Discord API token and the ID of a channel where the bot can send messages. Set them as environment variables in your terminal or in your existing application's env file:

```sh
export DISCORD_API_TOKEN="your-bot-token"
export DISCORD_CHANNEL_ID="your-channel-id"
```

Keep your bot token secret. You can also pass it as the `api_token` input instead of setting `DISCORD_API_TOKEN`.

### Send a message

Require the gem and run the command with the destination channel ID and the message content:

```ruby
require "foobara/discord_api"

command = Foobara::DiscordApi::CreateMessage.new(
  channel_id: ENV["DISCORD_CHANNEL_ID"],
  content: "Hello, Discord!"
)

outcome = command.run

if outcome.success?
  message = outcome.result
  puts "Created message #{message.id} in channel #{message.channel_id}"
else
  puts outcome.errors_hash
end
```

`channel_id` and `content` are required inputs when sending a message.

If `api_token` is omitted, the command falls back to the `DISCORD_API_TOKEN` environment variable. To pass it explicitly:

```ruby
command = Foobara::DiscordApi::CreateMessage.new(
  channel_id: ENV["DISCORD_CHANNEL_ID"],
  content: "Hello, Discord!",
  api_token: "your-bot-token"
)

outcome = command.run

if outcome.success?
  message = outcome.result
  puts "Created message #{message.id} in channel #{message.channel_id}"
else
  puts outcome.errors_hash
end
```

### The `Message` result

On success, `outcome.result` returns a `Foobara::DiscordApi::Message` with the following key attributes:

| Attribute | Type | Description |
| --- | --- | --- |
| `id` | String | The message's unique ID |
| `channel_id` | String | The channel the message was sent to |
| `type` | Integer | The message type |
| `content` | String | The message content |
| `mentions` | Array of `User` | Users mentioned in the message |
| `timestamp` | DateTime | When the message was sent |
| `edited_timestamp` | DateTime | When the message was last edited, or nil if never edited |
| `flags` | Integer | Message flags |
| `author` | `Foobara::DiscordApi::User` | The bot user that sent the message |
| `pinned` | Boolean | Whether the message is pinned |
| `mention_everyone` | Boolean | Whether the message mentioned everyone |
| `tts` | Boolean | Whether the message was a text-to-speech message |
| `embeds` | Duckture | Embedded content in the message |
| `components` | Duckture | Interactive components attached to the message |
| `mention_roles` | Duckture | Roles mentioned in the message |
| `attachments` | Duckture | Files attached to the message |

The `author` attribute is a typed `Foobara::DiscordApi::User` object with its own attributes including `id`, `username`, `global_name`, `discriminator`, and `bot`.

## Contributing

Contributions in the form of PRs and issues are always welcome.

Before you get started, ensure you have Ruby installed (via RVM or a similar version manager).

To work on an existing issue or submit a PR:
1. Fork the `foobara/discord-api` repository and clone it to your local machine.
2. Run `bundle install` to install any dependencies.
3. Run `rake` to ensure that everything works as expected before making any changes.
4. Implement your changes adding tests where applicable.
5. Re-run `rake` to ensure that all tests and RuboCop still pass.
6. Commit, push to GitHub and open a PR to review.

## License

This project is licensed under the MPL-2.0 license. Please see [LICENSE.txt](LICENSE.txt) for more info.