class Song 
  attr_accessor :name, :artist, :genre 
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name,artist,genre)
    @name = name

    @@count += 1
    @@artists << artist
    @@genres << genre
  
  end
  
  def self.count
    @@count
  end
  
  def self.artists
    @@artists.uniq!
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
    @@artists.uniq!.count
  end 

end