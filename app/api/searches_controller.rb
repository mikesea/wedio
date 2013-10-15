module Wedio
  class App < Sinatra::Base

    get "/search" do
      Rdio.search(params[:q]).to_json
    end

    get "/tracks/search" do
      Rdio.search_tracks(params[:q]).to_json
    end

    get "/albums/search" do
      Rdio.search_albums(params[:q]).to_json
    end

    get "/artists/search" do
      Rdio.search_artists1(params[:q]).to_json
    end

    # GET /search/defeated%20no%20more%20disclosure/play
    get "/search/:q/play" do
      Rdio.search(params[:q]) do |r|
        Player.play(Rdio.playback_key_for(r.first))
      end
    end

  end
end