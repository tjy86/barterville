class ProductsController < ApplicationController
	def index
		@products = Product.order(:name).page(params[:page])
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
	def update
		@product = Product.find(params[:id])
		if @product.update_attributes(params[:product])
			redirect_to @product
		else
			render :edit
		end
	end
	def edit
		@product = Product.find(params[:id])
	end
	def destroy
		product = Product.find(params[:id])
    	product.delete
    	redirect_to user_path(User.find(session[:id]))
	end
	def search
		name = params[:name]
		# @products = Product.where('products.keywords ~= ?', name)
	end
end