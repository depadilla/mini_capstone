class Api::OrdersController < ApplicationController
  before_action :authenticate_user

  def create  
    @product = Product.find_by(id: params[:product_id])
    @total = @product.price + @product.tax
    @order = Order.create(
      user_id: current_user.id, 
      product_id: params[:product_id],  
      quantity: params[:quantity],
      subtotal: @product.price,
      tax: @product.tax,
      total: @total
    )
    render "show.json.jbuilder"
  end

  def index
    @orders = current_user.orders
    render "index.json.jbuilder"
  end
end