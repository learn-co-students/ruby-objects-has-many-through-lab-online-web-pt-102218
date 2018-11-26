require "pry"

class Artist
  
  attr_accessor :name
  
  @@all_artists = []
  
   def initialize(name)
    @name = name
    @@all_artists << self
  end
  
  def new_song(song, genre)
    creation = Song.new(song, name, genre.name)
    Song.all << creation
  end
  
  def genres
    @@all_artists << Genre.all
  end

  def songs
    @@all_artists << Song.all
  end
  
   def self.all
    @@all_artists
  end
  
  
  
end