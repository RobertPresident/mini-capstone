class ProductsController < ApplicationController

  before_action :authenticate_admin!, only: [:new, :create, :edit, :update, :destroy]

  def index

    @test_token = ENV['test_api_token']
    @test_secret = ENV['test_api_secret']
    
    @products = Product.all
    sort_order = params[:order_by]
    sort_price = params[:order_by_price_desc]
    search_term = params[:search_term]    
    discount_value = params[:discount]
    category_type = params[:category]

    if category_type
      @products = Category.find_by(name: category_type).products
    end


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
    @product = Product.new
  end

  def create
    @product = Product.new(
      user_id: current_user.id,
      price: params[:price],
      description: params[:description],
      name: params[:name]
      )
      
    if @product.save
      Image.create(url: params[:image], product_id: @product.id) if params[:image] != ""


      flash[:success] = "Product Created"
      redirect_to "/products/#{@product.id}" 
    else
      render :new 
    end
  end


  def show
    @product = Product.find(params[:id])

    @tax = @product.tax
    @total = @product.total
  end

  def edit
   @product = Product.find_by(id: params[:id]) 
  end

  def update
   @product = Product.find_by(id: params[:id]) 

   if @product.update(
                    price: params[:price],
                    description: params[:description],
                    stock: params[:stock]
                    )

   

   flash[:success] = "Product Created"
   render 'show.html.erb'
 else 
  render :edit
  end
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



  
    
    





    


  


