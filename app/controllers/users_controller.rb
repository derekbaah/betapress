class UsersController < ApplicationController
  before_action :set_user, only: [:index,:show]
  
  def index
    @users = User.all
  end
  
  def show
    @user = User.find(params[:id])
  end
  
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_user
    @user = User.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def post_params
    params.require(:user).permit(:firstname, :lastname, :username, :email, :userbio)
  end

end
