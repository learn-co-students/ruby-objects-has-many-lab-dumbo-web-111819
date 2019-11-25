require_relative 'author.rb'
class Post
    attr_accessor :title, :author
    @@post = []
    @@all = []
    def initialize(title)
        @title = title
        @@post << self
        @@all << self
        
    end
    def self.all
        @@all
    end
    def author= (author)
        @author = author
    end
 
    def author_name

        if author 
           @author.name
        else
            return nil
        end
        
    end
    
end