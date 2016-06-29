class StoreController < ApplicationController
  after_action :allow_facebook_iframe
	layout 'home'

  
  def index
    # @products = Product.is_public.order(:category)
    @first_courses = Product.first_course.is_public
	@second_courses = Product.second_course.is_public
	@rolls_sets = Product.rolls_sets.is_public
	@drinks = Product.drinks.is_public
    @sliders = Slider.is_public.order(:weight)
    @reviews = Review.is_public.order(:created_at).limit(4)
  end

  private

    def allow_facebook_iframe
      response.headers['X-Frame-Options'] = 'ALLOW-FROM http://metrika.yandex'
    end
  
end
