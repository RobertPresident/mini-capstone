class CartedProductsController < ApplicationController


  before_action :authenticate_user!


  def index
    if user_signed_in? && current_user.carted_items.count > 0
      @cart = current_user.carted_products.where(status: 'carted')
    else
      flash[:info] = "Why don't you add some items to your cart"
      redirect_to '/'
    end
  end

  def create
    @carted_product = CartedProduct.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: current_user.id,
      status: "carted"
      )

    session[:cart_count] = nil
    flash[:success] = "Item added to Cart"
    redirect_to "/cart"
  end

  def destroy
    @carted_product = CartedProduct.find(params[:id])
    @carted_product.update(status: "removed")

    session[:cart_count] = nil

    flash[:success] = "Removed Item"
    redirect_to '/cart'
  end
end

    
