require_relative 'song'
require 'pry'
class Artist
attr_accessor :name, :song
 
    @@all = []
    def initialize(name)
        @name = name
        
        self.class.all << self
    end

    def self.all
        @@all
    end
    
    def songs
        Song.all.select {|song_instance| song_instance.artist_name == self.name}
    end
    
    def add_song(artists_song)
        artists_song.artist = self
    end

    def add_song_by_name(song_name)
        
        new_song = Song.new(song_name)
        new_song.artist = self
    end

    def self.song_count
       song_array = Song.all.select{|x| x.artist}
       song_array.count
    end


    
end