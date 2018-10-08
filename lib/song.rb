class Song 
  attr_accessor :name
  attr_reader :artist, :genre
  @@all = []
  
  def initialize(name)
    @name = name 
    self.artist = artist
  end
  
  def self.all 
    @@all 
  end
  
  def save 
    self.class.all << self
  end
  
  def self.destroy_all 
    @@all.clear
  end
  
  def self.create(name)
    song = new(name)
    song.save
    song
  end
  
  def artist(artist)
    @artist = artist
    artist.add_song(self)
  end
  
end