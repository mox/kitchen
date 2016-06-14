class StoreController < ApplicationController
  
  def index
    @products = Product.order(:title)
    @sliders = Slider.order(:weight)
  end
  
end
