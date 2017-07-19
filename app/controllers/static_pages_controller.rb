class StaticPagesController < ApplicationController
  before_action :is_logged_in?,
  def index
  		@users = User.all
  		@friends = current_user.friends
  end

 
end
