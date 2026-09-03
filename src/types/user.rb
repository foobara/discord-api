module Foobara
  module DiscordApi
    class User < Foobara::Model
      # "author":{"banner_color":null,"clan":null,"primary_guild":null}
      attributes do
        id :string, :required
        username :string, :required
        global_name :string, :allow_nil
        discriminator :string, :required
        avatar :string, :allow_nil
        banner_color :string, :allow_nil
        clan :string, :allow_nil
        primary_guild [UserPrimaryGuild], :allow_nil
        public_flags :integer, :allow_nil
        flags :integer, :allow_nil
        bot :boolean, :allow_nil
        banner :string, :allow_nil
        accent_color :integer, :allow_nil
        global_name :string, :allow_nil
        collectibles [Collectible], :allow_nil
        display_name_styles :string, :allow_nil
        banner_color :string, :allow_nil
        clan :string, :allow_nil
        primary_guild [UserPrimaryGuild], :allow_nil
      end
    end
  end
end
