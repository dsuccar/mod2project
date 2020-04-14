class UsersController < ApplicationController
  before_action :find_user, only: [:show,:edit,:update,:destroy]

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
    @user = User.new(user_params)
    if  @user.valid?
        @user.save
        redirect_to user_path(@user)
    else
        render :edit
      end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  private
  def find_user
    @user = User.find(params[:id])
  end

  def user_params
   params.require(:user).permit(:name)
  end
end