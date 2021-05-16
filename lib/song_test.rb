
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


  # Inheritance and Messages
  class KaraokeSong < Song
    def initialize(name, artist, duration, lyrics)
      super(name, artist, duration)
      @lyrics = lyrics
    end

    def to_s
      "KS: #{@name}--#{@artist} (#{@duration}) [#{@lyrics}]"
    end
  end

  class BoleroSong < Song
    def initialize(name, artist, duration, lyrics)
      super(name, artist, duration)
      @lyrics = lyrics
    end

    def to_s
      super + " #{@lyrics}"
    end
  end
  # phương thức to_s có thể ghi đè constructor của class kế thừa
  # KaraokeSong kế thừa Song
  # aSong = Song.new("Bicylops", "Fleck", 260)
  aSong = KaraokeSong.new("My Way", "Sinatra", 255, "And now, the...")
  aBoleroSong = BoleroSong.new("Tan Co Dao Duyen", "Thuan Minh", 244, "And now, the...")
  p aSong.to_s
  p aBoleroSong.to_s

  # Inheritance and Mixins
  # However, an object that is totally secretive is pretty useless---you can create it, but then you can't do anything with it.
  # một phương thức khởi tạo khác của ruby

  # Objects and Attributes
  class CandyCrush
    def initialize(name, artist, duration)
      @name = name
      @artist = artist
      @duration = duration
    end

    def name
      @name
    end
    def artist
      @artist
    end
    def duration
      @duration
    end
  end

  aCandy = CandyCrush.new("Bicycle", "Fleck", 260)
  p "Candy #{aCandy.inspect}"
  p "Candy name #{aCandy.name}"
end