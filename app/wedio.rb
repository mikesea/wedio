$LOAD_PATH.unshift(File.dirname(__FILE__))

require "bundler/setup"
require "sinatra"

require "app"
require "api/controller"
require "models/player"