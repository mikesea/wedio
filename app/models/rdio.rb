require "rdio_api"

module Wedio
  class Rdio

    def self.client
      @client ||= RdioApi.new(:consumer_key => ENV['RDIO_KEY'],
                              :consumer_secret => ENV['RDIO_SECRET'])
    end

    def self.find(query, type)
      client.search(:query => query, :types => type)
    end

  end
end