require_relative "user"
require_relative "role"
require_relative "attachment"
require_relative "embed"
require_relative "message/component"
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
        mention_roles [Role], :required
        attachments [Attachment], :required
        embeds [Embed], :required
        timestamp :datetime, :required
        edited_timestamp :datetime, :allow_nil
        flags :integer
        components [Component]
        author User, :required
        pinned :boolean, :required
        mention_everyone :boolean, :required
        tts :boolean, :required
      end
    end
  end
end
