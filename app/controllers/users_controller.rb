class UsersController < ApplicationController
  before_action :find_user, only: [:show,:edit,:update]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end
  
  def new
    @user = User.new

  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to users_path
    else 
      render "new"
    end
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to  user_path(@user)

  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
   params.require(:user).permit(:name)
  end
end
