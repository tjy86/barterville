class RequestsController < ApplicationController
  def index
    user = @authenticated_user
    requests = Request.where(:owner_id => @authenticated_user, :done => false)
    binding.pry
    @reqs = {}
    requests.each do |r|
      Product.find(r.product_id)
      r.
  end
end