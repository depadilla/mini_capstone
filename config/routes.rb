Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  # namespace :api do
  #   get "/photos" => "photos#index"
  # end
  namespace :api do
    get "/products" => "products#products_list"
    get "/products" => "products#first_product"
    get "/products" => "products#second_product"
    get "/products" => "products#third_product"
  end
end
