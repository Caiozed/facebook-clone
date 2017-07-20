class LikesController < ApplicationController
	before_action :is_logged_in?
	def create 
		post = Post.find(params[:post_id])
		like = post.likes.build(user_id: current_user.id)
		if like.save
			redirect_back fallback_location: root_path 
		else
			redirect_back fallback_location: root_path 
		end
	end

	def destroy
		like = Like.find(params[:id])
		post = Post.find(params[:post_id])
		if like.destroy
			redirect_back fallback_location: root_path 
		end
	end
end
