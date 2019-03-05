class Api::ProductsController < ApplicationController
  protect_from_forgery with: :null_session
  def index
    @products = Product.all
    render "index.json.jbuilder"
  end

  def show
    product_id = params[:id]
    @product = Product.find_by(id: product_id)
    render "product.json.jbuilder"
  end

  def create
    @new_product = Product.create(
      name: params[:name], 
      price: params[:price], 
      image_url: params[:image_url], 
      description: params[:description]
    )
    render "create.json.jbuilder"
  end

  def update
    @product = Product.find_by(id: params[:id])
    @product.name = params[:name]
    @product.price = params[:price]
    @product.image_url = params[:image_url]
    @product.description = params[:description]
    @product.save

    render "product.json.jbuilder"
  end

  def destroy
    @product = Product.find_by(id: params[:id])
    @product.destroy
    @gone = "Your product has been deleted!"
    render "destroy.json.jbuilder"
  end
end