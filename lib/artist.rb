class Artist 
  attr_accessor :name 
  
  @@all = []
  @@songs = []
  def initialize(name)
    @name = name
    @genres = []
    @@all << self
  end 
  
  def self.all 
    @@all
  end 
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @@songs << song
  end 
  
  def songs 
    Song.all.select{|song| song.artist == self}
  end 
  
  def genres 
    @genres
  end 
end 