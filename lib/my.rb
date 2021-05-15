# frozen_string_literal: true

require_relative "my/version"

module My
  class Error < StandardError; end
  class Song
    
    def initialize(name, author, vol)
      @name = name
      @author = author
      @vol = 1
    end
  end
  # Your code goes here...
  class SongList
    def initialize
      @songs = Array.new
    end
  
    def append(aSong)
      @songs.push(aSong)
    end

    def deleteFirst
      @songs.shift
    end

    def deleteLast
      @songs.pop
    end

    def [](key)
        if key.kind_of?(Integer)
          result = @songs[key]
        else
          @song.find { |aSong| key == aSong.author}
        end
        return result
    end
  end

  list = SongList.new
  list.append(Song.new('title1', 'atist1', 1))
  puts list.inspect
  # see all methods of class
  p list.methods
end
