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
    histogram = {}
    @@genres.map do |r|
      if histogram.has_key?(r)
      puts r
      histogram[r] << @@genres.count(r)
      else
      puts r
      histogram[r] = @@genres.count(r)
      end
    end
    histogram
  end
  
  def self.artist_count
    @@artist.uniq!.count
  end 

end