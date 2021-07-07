class Genre
  attr_accessor :name, :songs
  
  @@all= []
  
  def initialize(name)
      @name = name
      @@all << self 
  end
  
  def self.all 
    @@all 
  end 
  
  def songs
    Song.all.select do |song|
      song.genre == self
    end 
  end 
  
  def artists 
    self.songs.collect do |s|
      s.artist
    end
  end 
  
end
