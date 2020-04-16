
class AppsController < ApplicationController
  before_action :find_app, only: [:show]
  before_action :authorized, exept: [:index, :show]

  def index
    @apps = App.all
  end

  def show 
  end

  def new
    @app = App.new
  end

  def create

    @app = App.new(app_params)
    if @app.valid?
        @app.save
        redirect_to app_path(@app.id)
    else
        render "new"
        
    end
    

  
  end

  
  private

  def find_app
    @app = App.find(params[:id])
  end

  def app_params
    params.require(:app).permit(:user_id, :dog_id)

  end


end