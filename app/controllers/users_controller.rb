class UsersController < ApplicationController
	
	def index
		@users = User.all
	end

	def new
		@user = User.new
	end

	def create 
		user = User.new(accessible_params)
		user.save
		redirect_to action: :index
	end

	private

	def accessible_params
    	params.require(:user).permit(:name, :email, :birth)
  	end
end