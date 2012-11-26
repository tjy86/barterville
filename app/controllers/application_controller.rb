class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :authenticate_user
  private
  def authenticate_user
       if session[:name]
          @authenticated_user = User.where(:name => session[:name]).first
       else
          @authenticated_user = nil
       end
  end
end
