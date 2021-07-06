	class Genre
  
  attr_accessor :name, :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
   
   def self.all
    @@all
  end
   
   def artists
    Song.all.map do |song|
      if song.genre == self
        song.artist
      end
    end
  end
end