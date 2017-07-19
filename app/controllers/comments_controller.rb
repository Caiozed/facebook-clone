class CommentsController < ApplicationController
	before_action :is_logged_in?, only: [:create]
	def create 
		post = Post.find(params[:post_id])
		if post.comments.create(content: params[:comment][:content], user_id: current_user.id)
			redirect_to post_path(post)
		else
			redirect_to post_path(post)
		end
	end

end
