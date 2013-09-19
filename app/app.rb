module Wedio
  class App < Sinatra::Base

    configure do
      `./bin/boot`
    end

    get "/" do
      "<h1>Wedio</h1>"
    end

  end
end