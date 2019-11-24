# require_relative 'artist'

# class Song
#   attr_accessor :name, :artist

#   @@all = []

#   def initialize(name, artist = nil)
#     @artist = artist
#     @name = name
#     self.class.all << self
#     if artist
#       artist.add_song_by_name(self, artist)
#     end
#   end

#   def self.all
#     @@all
#   end

#   def self.song_count
#     @@all.count
#   end

#   def artist_name
#     if @artist
#       @artist.name
#     end
#   end

# end

# # binding.pry

###################################
###################################

# require_relative 'song'

# class Artist
# attr_accessor :name

#   @@all = []

#   def initialize(name)
#     @name = name
#     self.class.all << self
#     @songs = []
#   end

#   def self.all
#     @@all
#   end

#   def add_song_by_name(input)
#     song = Song.new(input, self)
#     @songs << song
#   end

#   def songs
#     @songs
#   end


# end

# # binding.pry