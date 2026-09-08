require_relative "user/flag"

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
        public_flags :integer, :allow_nil, one_of: FLAG
        flags :integer, :allow_nil, one_of: FLAG
        bot :boolean, :allow_nil
        banner :string, :allow_nil
        accent_color :integer, :allow_nil
        global_name :string, :allow_nil
        banner_color :string, :allow_nil
        # TODO: check if the proper type is in the documentation yet and replace duck with it if so.
        display_name_styles :duck, :allow_nil
        # TODO: check if the proper type is in the documentation yet and replace duck with it if so.
        clan :duck, :allow_nil
        primary_guild :duck, :allow_nil
        collectibles :duckture, :allow_nil
        avatar_decoration_data :duck, :allow_nil
      end
    end
  end
end
