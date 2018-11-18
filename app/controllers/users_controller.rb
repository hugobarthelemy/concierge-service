class UsersController < ApplicationController
  # /users
  def index
    @users = User.all.sort_by { |i| i.first_name }
  end

  # /user/:id
  def show
    @user = User.find(params[:id])
    @headings = @user.headings
  end
end
