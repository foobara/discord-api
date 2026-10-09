require "foobara/all"
require "foobara/http_api_command"

module Foobara
  module DiscordApi
    foobara_domain!
  end
end

Foobara::Util.require_directory "#{__dir__}/../../src"
