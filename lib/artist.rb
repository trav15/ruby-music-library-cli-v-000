class Artist 
  attr_accessor :name 
  attr_reader :songs
  @@all = []
  
  def initialize(name)
    @name = name 
    @songs =[]
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
  
  def add_song(title)
    song.artist = self 
    songs << song
  end
  
end