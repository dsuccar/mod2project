
class AppsController < ApplicationController
  before_action :find_app, only: [:show]

  def index
    @apps = App.all
  end

  def show 
  end

  def new
    @app = App.new
  end

  def create
    
    # user = User.find(params[:app][:user].to_i)
    # dog  = Dog.find(params[:app][:dog].to_i)
    @app = App.new(app_params)

  
  end

  def _app_form
    @dog_list = Dog.all.select do |d|
       d.valid? 
      end
  end

  private

  def find_app
    @app = App.find(params[:id])
  end

  def _app_params
    params.require(:app).permit(:user_id, :dog_id)

  end


end