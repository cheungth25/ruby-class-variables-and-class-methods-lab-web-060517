require 'pry'

class Song
  @@count = 0
  @@artists = []
  @@genres = []
  attr_reader :name, :artist, :genre
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << artist
    @genre = genre
    @@genres << genre
    @@count += 1
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.count
    @@count
  end

  def self.genre_count
    @@genres.each_with_object({}) do |genre, genre_hash|
      genre_hash[genre] = 0 if genre_hash[genre] == nil
      genre_hash[genre] += 1
    end
  end
  def self.artist_count
    @@artists.each_with_object({}) do |artist, artist_hash|
      artist_hash[artist] = 0 if artist_hash[artist] == nil
      artist_hash[artist] += 1
    end
  end
end
