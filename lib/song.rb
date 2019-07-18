class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artist = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    @@count += 1
    @@artist << name
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |key|
      puts key
    end
  end
  
  #artist_count 

end