class Artist 
  attr_accessor :name, :genre 
  
  @@all = [ ]
  
  def self.all
    @@all 
  end 
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = [ ]
  end 
  
  def songs
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  
  def new_song(name, genre)
    s = Song.new(name, self, genre)
    @songs << s
    s 
  end  
  
  def genres
    songs.collect do |song|
      song.genre 
    end 
  end 

  
end