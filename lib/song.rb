require_relative 'artist'

class Song
  attr_accessor :artist
  attr_reader :name, :genre

  @@all = []

  def initialize(name, genre = nil)
    @name = name
    @genre = genre
    @@all << self
  end

  def self.all
    @@all
  end

  def artist_name
    if @artist
      @artist.name
    end
  end

end

