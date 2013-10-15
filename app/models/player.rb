module Wedio

  class Player

    def self.play(key = nil)
      `./bin/play #{key}`
    end

    def self.pause
      `./bin/pause`
    end

    def self.current_track
      `./bin/current-track`
    end

    def self.next_track
      `./bin/next-track`
    end

    def self.previous_track
      `./bin/previous-track`
    end

  end
end
