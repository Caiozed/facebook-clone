class UserFriendshipsController < ApplicationController
	before_action :is_logged_in?, only: [:create]
	def create 
		if current_user.add_friend(params[:request][:issuer_id])
			request = Request.find_by(issuer_id: params[:request][:issuer_id],
			 							  receiver_id: current_user.id)
			request.destroy
			redirect_to root_path
		else
			redirect_to root_path
		end
	end
end
