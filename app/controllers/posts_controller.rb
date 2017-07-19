class PostsController < ApplicationController
	before_action :is_logged_in?  
	def create
		post = current_user.posts.build(post_params)
		pic = Picture.new(imageable: post, name: image_params[:image])
		if post.save
			pic.save
			redirect_to post_path(post)
		else
			redirect_to root_url
		end
	end

	def index
		@posts = Post.all
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
	end

	def post_params
		params.require(:post).permit(:author, :content)
	end

	def image_params
		params.require(:post).permit(:image)
	end
end
