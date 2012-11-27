class UsersController < ApplicationController
	def index
		@users = User.order(:name).page(params[:page])
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
		@user = User.find(params[:id])
		@products = Product.where(:user_id => params[:id])
	end

	def update
		@user = User.find(params[:id])
		if @user.update_attributes(params[:user])
			redirect_to @user
		else
			render :edit
		end
	end
	def edit
		@user = User.find(params[:id])
	end
	def destroy
		user = User.find(params[:id])
    	user.delete
    	redirect_to user_path(User.find(session[:id]))
	end
end