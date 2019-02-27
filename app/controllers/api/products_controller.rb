class Api::ProductsController < ApplicationController
  def products_list
    @products = Product.all
    @product1 = Product.first.name
    @product2 = Product.second.name
    @product3 = Product.third.name
    render "product.json.jbuilder"
  end
end
