module Foobara
  module DiscordApi
    class CreateMessage < Foobara::Command
      inputs do
        channel_id :string, :required
        content :string, :required
      end

      result Message

      include HttpApiCommand

      base_url "https://discord.com/api"
      path { "/channels/#{channel_id}/messages" }
 
      def build_request_body
        self.request_body = {

          content:

          # tts: false,
          # embeds: [{
          #   title: "Hello, Embed!",
          #   description: "This is an embedded message."
          # }]

        }
      end
    end
  end
end
