require_relative 'song'

class Artist
  attr_accessor :name, :songs
  
  def initialize(name)
    @name = name
    @songs = []
  end

  def songs
    Song.all.select {|song| song.artist == self}
  end

  def add_song(song)
    song.artist = self
    song
  end

  def add_song_by_name(name)
    name = Song.new(name)
    name.artist = self
    name
  end

  def self.song_count
    Song.all.count
  end

end

