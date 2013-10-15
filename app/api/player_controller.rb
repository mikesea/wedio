module Wedio
  class App < Sinatra::Base

    post "/play/:key" do
      Player.play(params[:key])
      "Now playing: #{Player.current_track}"
    end

    put "/play" do
      Player.play
    end

    put "/pause" do
      Player.pause
    end

    put "/next_track" do
      Player.next_track
    end

    put "/previous_track" do
      Player.previous_track
    end

  end
end