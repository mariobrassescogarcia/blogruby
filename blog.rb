



class Post
	attr_reader :tttle, :date, :text

	def initialize (tittle, date, text)
		@tittle = tittle
		@date = Time.now
		@text = text
	end
end


class Blog 
	attr_reader :blogger, :posts

	def initialize (blogger, posts, postsperpage)
		@blogger = blogger
		@posts = []
		@postsperpage = 3
	end

	def publish (post)
		@posts.push(post)
	end

	def show_posts
		@posts.each do |post|
		 puts post.tittle
		 puts post.date
		 puts post.text
		end
	end

	def make_page
		page = @posts.each_slice(@postsperpage)
		return page
	end

end


class Sponsored < Post

	attr_reader :date, :text

	def tittle
		tittle = "*****#@tittle*****"
		tittle
	end
		
end


mariosblog = Blog.new("Mario", [], 3)

firstpost = Post.new("First post", "", "Blablablabla")
secondpost = Post.new("Second post", "", "Bleblebleble")
thirdpost = Post.new("Third post", "", "Blibliblibli")
fourthpost = Post.new("Fourth post", "", "Bloblobloblo")
fifthpost = Sponsored.new("Fifth post", "", "Blublublublu" )

mariosblog.publish(firstpost)
mariosblog.publish(secondpost)
mariosblog.publish(thirdpost)
mariosblog.publish(fourthpost)
mariosblog.publish(fifthpost)

mariosblog.show_posts
mariosblog.make_page