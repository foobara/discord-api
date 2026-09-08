ENV["FOOBARA_ENV"] ||= "development"

require "bundler/setup"

# simplecov:disable
if ["development", "test"].include?(ENV["FOOBARA_ENV"])
  # simplecov:enable
  require "pry"
  require "pry-byebug"
end

require_relative "config"
