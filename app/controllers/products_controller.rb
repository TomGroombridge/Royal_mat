class ProductsController < ApplicationController

def new 
	@product = Product.new
end

def create 
	@product = Product.create(params[:product].permit(:name, :description))
	if @product.save 
		redirect_to '/products'
	else 
		format.html { render action: 'new' }	  
	end
end

def index
	@products = Product.all
end

end
