class Blog
attr_reader :container
  def initialize
    @container = []
  end

  def add_post(post)
    @container << post
  end

  def order_post_by_date
    @container.sort! {|x, y| y.date <=> x.date}

  def publish_front_page
    @container.each do |p| p.print
  end
end
end

class Post
  attr_reader :title, :date, :text
  def initialize(title, date, text)
    @title = title
    @text = text
    @date = date
  end

  def print
    puts @title
    puts '*****************'
    puts @text
    puts '-----------------'
    end
end


class Sponsored < Post
   def initialize(date, title, text)
     @date = date
     @title = "***" + title + "****"
     @text = text
   end
end


blog = Blog.new
blog.add_post Post.new("2016-12-07", "hello ruby", " i'm a ruby fan")
blog.add_post Sponsored.new(20161217, "hello gib", " i'm a gib fan")
blog.add_post Post.new(20161128, "hello Ironhack", "ironhack without noise")


blog.publish_front_page
