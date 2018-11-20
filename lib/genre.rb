class Genre
  
  attr_reader :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def artists
    self.songs.collect { |song| song.artist }.uniq
  end
  
  ########### Class methods ############
  
  def self.all
    @@all
  end
  
end