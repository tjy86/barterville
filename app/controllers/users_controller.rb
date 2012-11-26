class UsersController < ApplicationController
	def index
		@users = User.all
	end
	def new
		@user = User.new
	end
	def create
		@user = User.new(params[:user])

		if @user.save
			name = params[:user][:name]
    		session[:name] = name
			session[:id] = @user[:id]
			redirect_to root_path
		else
			render :new
		end
	end
	def show
	end
end