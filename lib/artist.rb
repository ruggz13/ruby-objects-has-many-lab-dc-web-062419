require "pry"

class Artist

	attr_accessor :name

	def initialize(name)
		@name = name

	end

	def add_song(song)
		song.artist = self
	end

	def songs
		Song.all
	end

	def add_song_by_name(song)
		# binding.pry
		new_song = Song.new(song) 
		new_song.artist = self
	end

	def self.song_count
		Song.all.size
	end

end