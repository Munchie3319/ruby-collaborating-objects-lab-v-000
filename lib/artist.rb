class Artist
  attr_accessor :name, :songs, :all 

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song) 
    @songs << song 
  end
end