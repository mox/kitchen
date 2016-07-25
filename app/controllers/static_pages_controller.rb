class StaticPagesController < ApplicationController
  
  before_action :authenticate_admin!, only: [ :index, :edit ]
  layout 'admin', only: [ :index, :edit ]
  
  def about
  	@page = Page.about.first
  end

  def shipping
  	@page = Page.shipping.first
  end

  def rules  	
  	@page = Page.rules.first
  end

  def index
  	@pages = Page.all
  end

  def edit
  	@page = Page.find(params[:id])
  end
  def update
  	@page = Page.find(params[:id])

  	respond_to do |format|
      if @page.update(page_params)
        format.html { redirect_to static_pages_path, notice: 'page was successfully updated.' }
        format.json { render :show, status: :ok, location: pages_path }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  private
	  def page_params
	      params.require(:page).permit(
	      	:title,
	      	:text
	      	)
	    end
end
