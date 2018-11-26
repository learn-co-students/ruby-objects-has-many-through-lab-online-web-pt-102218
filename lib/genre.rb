class Genre
  
  attr_accessor :name
  
  @@all_genres = []
  
  def initialize(name)
    @name = name
    @@all_genres << self
  end
  
  def self.all
    @@all_genres
  end
  
  def songs
    array = []
    Song.all.each do |song|
      if song.genre == self.name
        array << song
      end
    end
    array
  end
  
  def artists
   Artist.all
  end
  
end