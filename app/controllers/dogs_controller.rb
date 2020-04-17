class DogsController < ApplicationController
    # before_action :authorized, except: [:index, :show,:edit, :update]
    before_action :logged_in?, except: [:index, :show]
<<<<<<< HEAD
    before_action :authorized, except: [:index, :show]
    before_action :admin?
=======
  
    before_action :admin?, except: [:index, :show]
>>>>>>> 0016d2932f81fbb9df23b3c0a270bed3f3f1a1a7
    

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
            if  @dog.valid?
                @dog.save
<<<<<<< HEAD
                redirect_to dog_path(@dog)
=======
                redirect_to dogs_path
>>>>>>> 0016d2932f81fbb9df23b3c0a270bed3f3f1a1a7
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
                @dog.update(dog_params)

                redirect_to dogs_path
            else
                render :edit
            end
    end

    def destroy
      @dog = Dog.find(params[:id])
        @dog.destroy
        redirect_to dogs_path
    end 

    def dog_params
        params.require(:dog).permit(:name)
    end


end
