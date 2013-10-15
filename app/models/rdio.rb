require "rdio_api"

module Wedio
  class Rdio

    def self.client
      @client ||= RdioApi.new(:consumer_key => ENV['RDIO_KEY'],
                              :consumer_secret => ENV['RDIO_SECRET'])
    end

    def self.search_tracks(track_query)
      search(track_query, "track")
    end

    def self.search_artists(artist_query)
      search(artist_query, "artist")
    end

    def self.search_albums(album_query)
      search(album_query, "album")
    end

    def self.search(query, types="track, album, artist")
      response = client.search(:query => query, :types => types).results
      block_given? ? yield(response) : response
    end

    def self.playback_key_for(response_object)
      case response_object.type
      when "t", "a"
        response_object["key"]
      when "r"
        response_object["radioKey"]
      end
    end

  end
end