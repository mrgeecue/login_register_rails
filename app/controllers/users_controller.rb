class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to '/posts'
      else
        flash[:error] = @user.errors.full_messages.to_s
        redirect_to '/'
      end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password)
  end
end
