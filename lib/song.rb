class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artist = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name

    @@count += 1
    @@artist << artist
    @@genres << genre
  
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artist.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.genre_count
    @@genres.uniq!.count
  end
  
  def self.artist_count
    @@artist.uniq!.count
  end 

end