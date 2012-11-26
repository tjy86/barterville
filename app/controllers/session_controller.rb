class SessionController < ApplicationController
	skip_before_filter :authenticate_user #Avoids a redirect loop if user isn't authenticated.

	def new
	end
	def create
		user = User.find_by_name(params[:name])
		if user && user.authenticate(params[:password])
			session[:name] = user.name
			session[:id] = user[:id]
			redirect_to users_path
		else
			render :new
		end
	end

	def destroy
		reset_session #Session was maintaining the same :id even after logout. This will reset it all.
		redirect_to root_path
	end
end