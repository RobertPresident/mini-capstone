class CartedProductsController < ApplicationController

  def index
    
  end

  def create
    @carted_product = CartedProduct.create(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: current_user.id,
      status: "carted"
      )

  end
end
