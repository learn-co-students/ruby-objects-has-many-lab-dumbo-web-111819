require_relative 'artist'
require 'pry'
class Song
    attr_accessor :name, :artist
    @@all = []
    def initialize(name)
        
        @name = name
        self.class.all << self
    end

    def self.all
        @@all
    end

    

    def artist_name
        # binding.pry
       if self.artist
        self.artist.name
       end
    end

    # def artist
    #     song.artist = self
    # end

    # def artist_name
    #     if self.artist.name
    #         self.artist.name
    #     end
    # end
end