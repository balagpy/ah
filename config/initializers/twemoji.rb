# frozen_string_literal: true

require "twemoji/svg"

Twemoji.configure do |config|
  config.asset_root = ENV["TWEMOJI_ASSET_ROOT"] || "https://twitter.github.io/twemoji/2"
  config.file_ext = "svg"
  config.class_name = "twemoji"
end
