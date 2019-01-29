class UsersController < ApplicationController
  def post
    @user = User.find(params[:id])
    @posts = @user.posts
  end
end
