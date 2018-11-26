require "pry"

class Artist
  
  attr_accessor :name
  
  @@all_artists = []
  
   def initialize(name)
    @name = name
    @@all_artists << self
  end
  
  def new_song(name, genre)
    #binding.pry
    Song.new(name, self, genre)
  end
  
  def songs
    Song.all.select do |song|
      if song.artist.name == self.name
        song.artist.name
      end
    end
  end
  
  def genres
    Genre.all.map do |genre|
      if genre.name == "rap"
        binding.pry
        genre
      end
    end
  end
  
   def self.all
    @@all_artists
  end
  
  
  
end