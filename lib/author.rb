require_relative 'post'
class Author
    attr_accessor :name, :posts 
   
    def initialize(name)
        @name = name
        
    end

    

    def posts
        Post.all.select {|x| x.author_name == self.name}
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        new_post = Post.new(post_title)
        self.add_post(new_post)
    end

    def self.post_count
        post_array = Post.all.select {|x| x.author}
        post_array.count
    end
end