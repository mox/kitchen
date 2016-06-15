class StoreController < ApplicationController
  
  def index
    @products = Product.is_public.order(:title)
    @sliders = Slider.is_public.order(:weight)
  end
  
end
