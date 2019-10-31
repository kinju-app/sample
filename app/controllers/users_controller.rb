class UsersController < ApplicationController
	before_action :set_user, only: [:edit, :update, :show, :destroy]	
	before_action :require_same_user, only: [:edit, :update, :destroy]

	def index
		@users = User.paginate(page: params[:page], per_page: 2)
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		@user.save
		redirect_to users_path
	end

	def show		
	end

	def edit		
	end

	def update		
		@user.update(user_params)
		redirect_to users_path
	end

	def destroy
		@user.destroy
		redirect_to users_path
	end	

	private
	def user_params
		params.require(:user).permit(:username, :email, :password)
	end

	def set_user
		@user = User.find(params[:id])
	end

	def require_same_user
		if current_user != @user
			redirect_to users_path
		end
	end
end
