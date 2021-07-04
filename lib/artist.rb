class Artist

  attr_accessor :name, :genre, :song
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    song = Song.new(song, self, genre)
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
