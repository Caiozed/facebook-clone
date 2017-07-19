class LikesController < ApplicationController
	before_action :is_logged_in?
	def create 
		post = Post.find(params[:post_id])
		if post.likes.create(user_id: current_user.id)
			redirect_to post_path(post)
		else
			redirect_to post_path(post)
		end
	end

	def destroy
		like = Like.find(params[:id])
		post = Post.find(params[:post_id])
		if like.destroy
			redirect_to post_path(post)
		end
	end
end
