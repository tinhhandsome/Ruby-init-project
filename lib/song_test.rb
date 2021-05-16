
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

  class KaraokeSong < Song
    def initialize(name, artist, duration, lyrics)
      super(name, artist, duration)
      @lyrics = lyrics
    end

    def to_s
      "KS: #{@name}--#{@artist} (#{@duration}) [#{@lyrics}]"
    end
  end
  # phương thức to_s có thể ghi đè constructor của class kế thừa
  # KaraokeSong kế thừa Song
  # aSong = Song.new("Bicylops", "Fleck", 260)
  aSong = KaraokeSong.new("My Way", "Sinatra", 255, "And now, the...")
  p aSong.to_s
end