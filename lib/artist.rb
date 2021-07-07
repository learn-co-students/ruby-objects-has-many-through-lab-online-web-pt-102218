class Artist
    attr_accessor :name, :songs
    @@all=[]
    def initialize(name)
        @name = name
        @songs = []
        @@all.push(self)
    end
    
    def new_song(song_name,genre)
        @songs.push(Song.new(song_name,self,genre)).last   
    end

    def genres
        @songs.map{|song|song.genre}.uniq
    end

    def self.all
        @@all
    end

end