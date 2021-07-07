class Song
    attr_accessor :name, :artist
    attr_reader :genre
    @@all = []
    def initialize(name,artist,genre)
        @name=name
        @artist=artist
        @genre=genre
        @genre.songs.push(self)
        @@all.push(self)
    end


    def self.all
        @@all
    end
end