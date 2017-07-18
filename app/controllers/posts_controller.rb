class PostsController < ApplicationController
	before_action :is_logged_in?  
	def create
		post = current_user.posts.build(post_params)
		if post.save
			redirect_to post_path(post)
		else
			redirect_to root_url
		end
	end

	def index
		@posts = current_user.posts
	end

	def show
		@post = Post.find(params[:id])
		@comments = @post.comments
	end

	def post_params
		params.require(:post).permit(:author, :content)
	end
end
