
  class Genre

    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name
      @songs = []
      @@all << self
    end

    def self.all
      @@all
    end

    def songs
      @songs
    end

    def artists
      @songs.collect do |song|
        song.artist
      end
    end
  end
