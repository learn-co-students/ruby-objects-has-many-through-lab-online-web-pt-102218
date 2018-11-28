require 'pry'
class Song 
  
  @@all = []
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre
    genre.songs << self
    genre.artists << self.artist
    @@all << self
  end
  
  def self.all 
    @@all 
  end
  
end