class ReviewsController < ApplicationController
  before_action :set_review, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_admin!, except: [ :new, :create ]
  layout 'admin', except: [ :new ]

  def index
  	@reviews = Review.all
  end

  def new
  	@review = Review.new
  end

  def edit
  	
  end

  def create
  	@review = Review.new(review_params)

    respond_to do |format|
      if @review.save
        format.html { redirect_to store_path, notice: 'Отзыв был опубликован, после модерации он появится на сайте.' }
        format.json { render :show, status: :created, location: reviews_path }
      else
        format.html { render :new }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
  	respond_to do |format|
      if @review.update(review_params)
        format.html { redirect_to reviews_path, notice: 'review was successfully updated.' }
        format.json { render :show, status: :ok, location: reviews_path }
      else
        format.html { render :edit }
        format.json { render json: @review.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  	@review.destroy
    respond_to do |format|
      format.html { redirect_to reviews_url, notice: 'review was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_review
      @review = Review.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def review_params
      params.require(:review).permit(
      	:name,
      	:description,
      	:company_name,
      	:email,        
        :is_public
      	)
    end

end