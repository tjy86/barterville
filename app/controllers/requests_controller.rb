class RequestsController < ApplicationController
  def index
    user = @authenticated_user
    @requests = Request.where(:owner_id => @authenticated_user, :done => false)
  end
  def action

    action = params[:commit]

    @request_id = params[:request]

    r = Request.find(@request_id)
    @product_id = r.product_id

    r.done = true

    if action == 'accept'
      p = Product.find(r.product_id)
      p.user_id = r.buyer_id
      p2 = Product.find(r.exchange_id)
      p2.user_id = r.owner_id
      @action = 'accept'
      p.save
      p2.save
      Notifications.confirmation(@authenticated_user.name,p2.name).deliver
      #cleaning up, delete all items pertaining to the trades in other requests
      Request.where(:product_id => r.product_id).delete_all
      # Request.where(:product_id => r.exchange_id).delete_all
      # Request.where(:exchange_id => r.product_id).delete_all
      # Request.where(:exchange_id => r.exchange_id).delete_all
    else
      @action = 'reject'
    end
    r.save


  end
end