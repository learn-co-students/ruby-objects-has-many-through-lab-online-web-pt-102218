require 'pry'
class Artist 
  
  @@all = []
  attr_accessor :name
  
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
    songs.map do |i| 
      i.genre
    end 
  end
  
end 