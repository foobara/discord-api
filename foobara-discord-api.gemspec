require_relative "version"

Gem::Specification.new do |spec|
  spec.name = "foobara-discord-api"
  spec.version = Foobara::DiscordApi::VERSION
  spec.authors = ["Miles Georgi", "Nicolás Campos"]
  spec.email = ["azimux@gmail.com", "nicolascampos297@gmail.com"]

  spec.summary = "An easy way to use the Discord API as Foobara commands"
  spec.homepage = "https://github.com/foobara/discord-api"
  spec.license = "MPL-2.0"
  spec.required_ruby_version = Foobara::DiscordApi::MINIMUM_RUBY_VERSION

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/main/CHANGELOG.md"

  spec.files = Dir[
    "lib/**/*",
    "src/**/*",
    "LICENSE*.txt",
    "README.md",
    "CHANGELOG.md"
  ]

  spec.add_dependency "foobara", ">= 0.0.136", "< 2.0.0"
  spec.add_dependency "foobara-http-api-command", "< 2.0.0"

  spec.require_paths = ["lib"]
  spec.metadata["rubygems_mfa_required"] = "true"
end
