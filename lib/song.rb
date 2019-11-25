require 'pry'
class Song
    attr_accessor :name, :artist
    @@song = []
    @@song_counter = 0
    @@all = []
    def initialize (name)
        @name = name
        @@song << self
        @@song_counter += 1
        @@all << self
    end
    def self.counter
        @@song_counter
    end

    def artist=(artist)
        @artist = artist
    end


    def artist
        @artist
       
    end
    def artist_name
        if @artist
            @artist.name
        else
            return nil
        end
        
    end

    def self.all
        @@all
    end
   
end