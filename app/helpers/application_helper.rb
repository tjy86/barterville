module ApplicationHelper
	def show_login_or_logout_link
		if @authenticated_user
			link_to "Logout", logout_path
		else
			link_to "Login", login_path
		end
	end
end
