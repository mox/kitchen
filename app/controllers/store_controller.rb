class StoreController < ApplicationController
	layout 'home'
  
  def index
    @products = Product.is_public.order(:title)
    @sliders = Slider.is_public.order(:weight)
    @reviews = Review.is_public.order(:created_at).limit(4)
  end
  
end
