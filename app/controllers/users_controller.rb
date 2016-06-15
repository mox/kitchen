class UsersController < ApplicationController
  before_action :set_user, only: [:edit, :update, :destroy]
  before_action :authenticate_admin!
  layout 'admin'

  def index
    @users = User.all
  end

  def edit
  	
  end
  def update
  	respond_to do |format|
      if @user.update(product_params)
        format.html { redirect_to users_url, notice: 'Пользователь успешно изменен.' }
        format.json { render :show, status: :ok, location: @user }
      else
        format.html { render :edit }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
  	@user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Пользователь успешно удален.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user
      @user = User.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:user).permit(:admin, :email)
    end
end	