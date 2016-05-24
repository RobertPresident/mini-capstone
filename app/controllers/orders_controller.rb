class OrdersController < ApplicationController

  def create
    @order = Order.new(
      quantity: params[:quantity],
      product_id: params[:product_id],
      user_id: current_user.id,
      )

    @order.calculate_figures(@order.product.price)
    @order.save


    flash[:success] = "Order Created"
    redirect_to "/orders/#{@order.id}"
  end


  def show
    @order = Order.find(params[:id])
    @product = Product.find(@order.product_id)
  end
end

