require_relative 'Post.rb'
class Author
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
       @@all << self
    end
    def posts
        Post.all
    end
    def add_post(post)
        new_post = Post.all.push(post)
        post.author = self  
    end
    def add_post_by_title(title)
        newer_post = Post.new(title)
        newer_post.author = self
        Post.all.push(newer_post)
       
    end
    def self.post_count
        Post.all.uniq.count
    end
    
end
