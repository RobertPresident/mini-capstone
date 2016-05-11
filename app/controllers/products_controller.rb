class ProductsController < ApplicationController
  def one
    @product = Product.first
  end

  def many
    @products = Product.all
  end
end
