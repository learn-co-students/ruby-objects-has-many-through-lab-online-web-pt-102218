class Artist
  
  attr_accessor :name
  
  @@all = []
  
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
  end
   
   def genres
    Song.all.map do |song|
      if song.artist == self
        song.genre
      end
    end
  end
   
   def songs
    Song.all.select{|song| song.artist == self}
  end
 end