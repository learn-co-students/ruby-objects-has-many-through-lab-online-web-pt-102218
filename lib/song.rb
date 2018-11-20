class Song
  
  attr_reader :name, :genre
  attr_accessor  :artist
  
  @@all = []
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    genre.songs << self
    @@all << self
  end
  
  ########### Class methods ############
  
  def self.all
    @@all
  end
end