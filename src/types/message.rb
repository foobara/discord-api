require_relative "user"
require_relative "message/type"

module Foobara
  module DiscordApi
    class Message < Foobara::Model
      attributes do
        id :string, :required
        channel_id :string, :required
        type :integer, :required, one_of: TYPE
        content :string, :required
        mentions [User], :required
        timestamp :datetime, :required
        edited_timestamp :datetime, :allow_nil
        flags :integer
        author User, :required
        pinned :boolean, :required
        mention_everyone :boolean, :required
        tts :boolean, :required
        # TODO: Implement these models.
        embeds :duckture, :required
        components :duckture
        mention_roles :duckture, :required
        attachments :duckture, :required
      end
    end
  end
end
