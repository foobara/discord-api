module Foobara
  module DiscordApi
    class CreateMessage < Foobara::Command
      inputs do
        channel_id :string, :required
        content :string, :required
        api_token :string, default: -> { ENV["DISCORD_API_TOKEN"] }
      end

      result Message

      include HttpApiCommand

      http_method :post
      base_url "https://discord.com/api"
      path { "/channels/#{channel_id}/messages" }

      def build_request_headers
        self.request_headers = { "Content-Type" => "application/json", "Authorization" => "Bot #{api_token}" }
      end

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

      # Comment out this three lines when testing new models or looking for new attributes.
      def build_result
        Message.new(response_body, ignore_unexpected_attributes: true)
      end
    end
  end
end
