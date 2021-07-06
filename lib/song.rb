class Song 
  attr_accessor :name, :artist, :genre 
  
  @@all = [ ]
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist
    genre.artists << artist
    @genre = genre 
    @genre.songs << self
    @artist.genres << genre
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  
end  