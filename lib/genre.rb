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
      if song.genre.name == self.name
        array << song
      end
    end
    array
  end
  
  def artists
    array = []
    Artist.all.each do |creator|
      if creator.name == song.artist
        array << artist
      end
    end
    array
  end
end