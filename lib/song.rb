class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
    return_hash = {}
    @@genres.each {|genre| return_hash.key?(genre) ? return_hash[genre] += 1 : return_hash[genre] = 1 }
    return_hash
  end

  def self.artist_count
    return_hash = {}
    @@artists.each {|artist| return_hash.key?(artist) ? return_hash[artist] += 1 : return_hash[artist] = 1 }
    return_hash
  end
end
