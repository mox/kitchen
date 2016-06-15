class SlidersController < ApplicationController
  before_action :set_slider, only: [:show, :edit, :update, :destroy]
  # before_action :authenticate_admin!
  layout 'admin'

  def index
  	@sliders = Slider.all
  end

  def new
  	@slider = Slider.new
  end

  def edit
  	
  end

  def create
  	@slider = Slider.new(slider_params)

    respond_to do |format|
      if @slider.save
        format.html { redirect_to sliders_path, notice: 'slider was successfully created.' }
        format.json { render :show, status: :created, location: sliders_path }
      else
        format.html { render :new }
        format.json { render json: @slider.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  	respond_to do |format|
      if @slider.update(slider_params)
        format.html { redirect_to sliders_path, notice: 'slider was successfully updated.' }
        format.json { render :show, status: :ok, location: sliders_path }
      else
        format.html { render :edit }
        format.json { render json: @slider.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@slider.destroy
    respond_to do |format|
      format.html { redirect_to sliders_url, notice: 'slider was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_slider
      @slider = Slider.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def slider_params
      params.require(:slider).permit(
      	:name,
      	:image_url,
      	:is_public,
      	:weight,
      	:remove_image_url
      	)
    end
end