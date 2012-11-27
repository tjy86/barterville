class RequestsController < ApplicationController
  def index
    user = @authenticated_user
    requests = Request.where(:owner_id => @authenticated_user, :done => false)

  end
end