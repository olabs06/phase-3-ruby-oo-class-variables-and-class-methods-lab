require 'pry'

class Song 
    
    attr_accessor :name, :artist, :genre
    @@artists = []
    @@genres = []
    @@count = 0

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre   
    end

    def self.count
        @@count
    end
    
    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        @@genres.tally
    end

    def self.artist_count
        @@artists.tally
    end

    #ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")

    #ninety_nine_problems.name


    #ninety_nine_problems.artist


    #ninety_nine_problems.genre


end