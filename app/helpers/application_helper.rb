module ApplicationHelper
	def show_login_or_logout_link
		if @authenticated_user
			link_to "Logout", logout_path
		else
			link_to "Login", login_path
		end
	end

  # def pending_requests_table
  #   user = @authenticated_user
  #   requests = Request.where(:owner_id => @authenticated_user, :done => false)

  #   requests.each do |r|
  #   Product.find(r.product_id)

  # end
end
