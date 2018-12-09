class Artist
  attr_accessor :name, :songs
    
    @@all = []
    
  def initialize(name)
      @name = name
      @@all << self 
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def self.all
      @@all
  end
  
  def songs 
    Song.all.select do |song|
      song.artist == self
    end
  end 
  
   def genres
    self.songs.collect do |currentSong| 
      currentSong.genre
    end
  end
    
end