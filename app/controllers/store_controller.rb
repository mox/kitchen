class StoreController < ApplicationController
  
  def index
    @products = Product.order(:title)
  end
  def index
    @products = Product.order(:title)
  end
end
