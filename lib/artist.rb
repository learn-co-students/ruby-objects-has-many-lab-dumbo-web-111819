require 'pry'
class Artist
    attr_accessor :name
    @@counter_song = 0
    def initialize(name)
        @name = name
    end
    def songs 
       Song.all
    end
    def add_song(song)
      Song.all.push(song)
      song.artist= self
     
      
    end
    def add_song_by_name(name)
        song = Song.new(name)
        song.artist = self
        Song.all.push(song)
       

    end
    def self.song_count
        Song.counter
     
        
    end

end