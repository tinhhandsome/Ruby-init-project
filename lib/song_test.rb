
module SongTest
  class Song
    def initialize(name, artist, duration)
      @name     = name
      @artist   = artist
      @duration = duration
    end

    def to_s
      "Song: #{@name}--#{@artist} (#{@duration})"
    end
  end

  aSong = Song.new("Bicylops", "Fleck", 260)
  p aSong.to_s
end