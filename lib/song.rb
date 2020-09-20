class Song

    attr_reader :name, :artist, :genre
    @@all = []
    @@count = 0
    @@artists = []
    @@genres = []
    
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@all << self
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

    def self.all
        @@all    
    end
        
    def self.genre_count
        unique_songs = all.map {|i| [i.name, i.genre]}.uniq
        unique_songs.each_with_object(Hash.new(0)) {|i, obj| obj[i[1]] += 1}
    end

    def self.artist_count
        unique_artists = all.map {|i| [i.name, i.artist]}.uniq
        unique_artists.each_with_object(Hash.new(0)) {|i, obj| obj[i[1]] += 1}
    end
    
end