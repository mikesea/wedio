$LOAD_PATH.unshift(File.dirname(__FILE__))

require "bundler/setup"
require "sinatra"

require "app"
require "api/player_controller"
require "api/searches_controller"
require "models/player"
require "models/rdio"
