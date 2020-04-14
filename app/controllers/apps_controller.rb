
class AppsController < ApplicationController
  before_action :find_app, only: [:show]





def index
  @apps = App.all
end

def show 
end



private

def find_app
  @app = App.find(params[:id])
end

end