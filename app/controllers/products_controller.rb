class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def new
		@product = Product.new
	end
	def create
		@product = Product.new(params[:product])

		if @product.save
			
			User.find(session[:id]).products << @product
			redirect_to root_path
		else
			render :new
		end
	end
	def show
		@product = Product.find(params[:id])
	end
end