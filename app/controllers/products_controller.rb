class ProductsController < ApplicationController

  def index
    @products = Product.all
    sort_order = params[:order_by]
    sort_price = params[:order_by_price_desc]
    search_term = params[:search_term]    
    discount_value = params[:discount]


    if sort_order && sort_price
      @products = Product.order(sort_order => sort_price)
    elsif sort_order
      @products = Product.order(sort_order)
    else
      @products = Product.all
    end
    
    if search_term
      @products = @products.where("name LIKE ? OR description LIKE ?", search_term, search_term)
    end

    if discount_value
      @products = @products.where("price < ?", discount_value)
    end
  end
    
    
    
  def new
    
  end

  def create
    @product = Product.create(
      user_id: current_user.id,
      price: params[:price],
      image: params[:image],
      description: params[:description],
      stock: params[:stock]
      )

flash[:success] = "Product Created"
redirect_to "/products/#{@product.id}"  
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
   @product = Product.find_by(id: params[:id]) 
  end

  def update
   @product = Product.find_by(id: params[:id]) 

   @product.update(
      price: params[:price],
      image: params[:image],
      description: params[:description],
      stock: params[:stock]
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

  def random
    product = Product.all.sample

    redirect_to "/products/#{product.id}"
  end
end


    


  


