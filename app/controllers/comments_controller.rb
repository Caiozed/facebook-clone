class CommentsController < ApplicationController
	before_action :is_logged_in?, only: [:create]
	def create 
		post = Post.find(params[:post_id])
		comment = post.comments.build(content: params[:comment][:content],
																	user_id: current_user.id)
		pic = Picture.new(imageable: comment, name: params[:comment][:image])
		if comment.save
			pic.save
			redirect_to post_path(post)
		else
			redirect_to post_path(post)
		end
	end

	def destroy
		comment = Comment.find(params[:id])
		comment.destroy
		redirect_to post_path(comment.post)
	end

end
