class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user
  # after_filter :check_alerts
  private
  def authenticate_user
    if session[:name]
      @authenticated_user = User.where(:name => session[:name]).first
    else
      @authenticated_user = nil
    end
  end
  # def check_alerts
  #   if  Request.where(:owner_id => @authenticated_user, :done => false).present?
  #     redirect_to alert_products_path
  #   end
  # end
end
