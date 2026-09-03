require_relative "user_primary_guild"
require_relative "collectible"
require_relative "flag"

module Foobara
  module DiscordApi
    class User < Foobara::Model
      attributes do
        id :string, :required
        username :string, :required
        global_name :string, :allow_nil
        discriminator :string, :required
        avatar :string, :allow_nil
        banner_color :string, :allow_nil
        clan :string, :allow_nil
        primary_guild [UserPrimaryGuild], :allow_nil
        public_flags :integer, :allow_nil, one_of: FLAG
        flags :integer, :allow_nil, one_of: FLAG
        bot :boolean, :allow_nil
        banner :string, :allow_nil
        accent_color :integer, :allow_nil
        global_name :string, :allow_nil
        collectibles [Collectible], :allow_nil
        display_name_styles :duck, :allow_nil # TODO: check if the proper type is in the documentation yet and replace duck with it if so.
        banner_color :string, :allow_nil
        clan :duck, :allow_ni # TODO: check if the proper type is in the documentation yet and replace duck with it if so.
        primary_guild [UserPrimaryGuild], :allow_nil
      end
    end
  end
end
