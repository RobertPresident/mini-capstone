class ProductsController < ApplicationController

  def index
    @products = Product.all
  end

  def new
    
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )
flash[:success] = "Product Created"
redirect_to "/products/#{@product.id}"  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
   @product = Product.find_by(id: params[:id]) 
  end

  def update
   @product = Product.find_by(id: params[:id]) 

   @product.update(
      name: params[:name],
      price: params[:price],
      image: params[:image],
      description: params[:description]
      )

   flash[:success] = "Product Created"
   render 'show.html.erb'
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy

    flash[:warning] = "Product Went Kablooey!!!"
    redirect_to "/"
  end

end

  


