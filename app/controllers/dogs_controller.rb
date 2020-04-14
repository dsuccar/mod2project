class DogsController < ApplicationController

    def index
        @dogs = Dog.all
    end

    def show 
        @dog = Dog.find(params[:id])
    end

    def new
        @dog = Dog.new
    end

    def create
        @dog = Dog.create(dog_params)
    if @dog.valid?
        @dog.save
        redirect_to dog_path(@dog)
    else 
            render :new
        end
    end

    def edit
        @dog = Dog.find(params[:id])
    end

    def update
        @dog = Dog.find(params[:id])
    if @dog.valid?
        @dog.save
        redirect_to dog_path(@dog)
    else
        render :edit
        end
    end

    def destroy
        @dog.destroy(params[:id])
        redirect_to dogs_path
    end 

    def dog_params
        params.require(:dog).permit(:name)
    end


end