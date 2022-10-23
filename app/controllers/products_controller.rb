class ProductsController < ApplicationController
    def index
        @products = Product.all
    end
    def new
        @products = Product.new
    end
    def create
        name = params[:product][:name]
        price = params[:product][:price]
        @product = Product.new(name:name,price:price)
        @product.save
        redirect_to '/'
    end
    def destroy
        product = Product.find(params[:id])
        product.destroy
        redirect_to '/'
    end
    
end
