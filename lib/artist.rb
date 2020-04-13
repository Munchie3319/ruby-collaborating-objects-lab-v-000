class Artist
  attr_accessor: name 

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all 
    @@all 
  end

  def add_song(song)
    song.artist = self 
  end

  def songs
    Song.all.select{|artist| artist.name == name} || 
    Artist.new(name)
  end

  def print_songs
    songs.each do |song|
      puts song.name 
    end
  end
end
