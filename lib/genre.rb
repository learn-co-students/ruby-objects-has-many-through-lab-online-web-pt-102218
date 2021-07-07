class Genre
    attr_accessor :name, :songs
    @@all = []
    def initialize(name)
        @name=name
        @songs=[]
        @@all.push(self)
    end
    
    def artists
        @songs.map{|song|song.artist}.uniq
    end

    def self.all
        @@all
    end
end