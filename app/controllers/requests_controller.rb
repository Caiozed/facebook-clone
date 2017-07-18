class RequestsController < ApplicationController
	before_action :is_logged_in?, only: [:create]
	before_action :redirect_to_root, 
								if: :request_extists?,
								only: [:create]
	before_action :redirect_to_root, 
								if: :request_is_current_user?,
								only: [:create]
	def create 
		if current_user.requester.create(receiver_id: params[:request][:receiver_id])
			redirect_to root_path
		else
			redirect_to root_path
		end
	end

	def request_params
		params.require(:request).permit(:receiver_id)
	end

	def redirect_to_root
		redirect_to root_path
	end

	def request_extists?
		Request.exists?(issuer_id: params[:request][:receiver_id],
										receiver_id: current_user.id)
	end

	def request_is_current_user?
		params[:request][:receiver_id] == current_user.id
	end
end
