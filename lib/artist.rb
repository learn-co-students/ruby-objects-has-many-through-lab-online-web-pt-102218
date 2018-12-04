
  class Artist

    attr_accessor :name
    @@all = []

    def initialize(name)
      @name = name
      @@all << self
      @songs = []
    end

    def self.all
      @@all
    end

    def new_song(name, genre)
      song = Song.new(name, self, genre)
      @songs << song
      song
    end

    def songs
      @songs
    end

    def genres
      self.songs.collect do |song|
        song.genre
      end
    end

  end
