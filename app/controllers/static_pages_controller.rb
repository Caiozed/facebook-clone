class StaticPagesController < ApplicationController
  def index
  	if user_signed_in?
  		@users = User.all
  		@friends = current_user.friends
  	end
  end
end
