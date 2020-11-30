require 'pry'
class Song
    

    attr_accessor :name, :artist
      
        @@all = []
      
        def initialize(name)
            @name = name
            @@all << self
        end
      
        def self.all
          @@all
        end
    
        def artist_name=(name)
            
            #if self.artist
             #return self.artist 
            #else 
            artist = Artist.find_or_create_by_name(name)
            self.artist = artist 
            #end
        end

        def self.new_by_filename(file_name)
            #binding.pry
            
            name = file_name.split(" - ")[1]
            singer = file_name.split(" - ")[0]
            song = self.new(name) 
            #binding.pry
            artist = Artist.find_or_create_by_name(singer)
            song.artist = artist
            song
    
            #binding.pry
        end
    end 
    