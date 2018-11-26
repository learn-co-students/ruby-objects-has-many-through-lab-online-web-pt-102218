class Song
  
  attr_accessor :song, :artist, :genre
  
  @@all_songs= []
  
  def initialize(song, artist, genre)
    @song = song
    @artist = artist
    @genre = genre
    @@all_songs << self
  end
  
  def self.all
    @@all_songs
  end
  
  
end