class Blog_posts

  @@all_entries = []

  @@total_blog_entry = 0

  def self.all
    @@all_entries
  end

  def self.add(item)
    @@all_entries << item
    @@total_blog_entry +=1
  end

  def self.publish
    @@all_entries.each do |post|
      puts "Title: #{post.title}"
      puts "Content: #{post.content}"
      puts "Published Date: #{post.published}"
    end
  end
end


class Blog_entry < Blog_posts

  def self.initialize
    puts "Do you want to write a new blog post?"
    initialize if gets.chomp.downcase =='n'
    post = new
    puts 'Title please'
    post.title = gets.chomp
    puts 'Subject please'
    post.subject = gets.chomp
    puts 'Now enter the content please'
    post.content = gets.chomp
    puts 'Finally, who is the author?'
    post.author = gets.chomp
    post.published = Time.now
    post.save
  end

  def title
    @title
  end

  def title=(title)
    @title = title
  end

  def subject
    @subject
  end

  def subject=(subject)
    @subject = subject
  end

  def content
    @content
    end

  def content=(content)
    @content = content
  end

  def published
    @published
  end

  def published=(published)
    @published = published
  end

  def author=(author)
    @author = author
  end

  def save
    Blog_entry.add(self)
  end
end



Blog_entry.initialize
all_entries = Blog_entry.all
puts all_entries.inspect
Blog_entry.publish