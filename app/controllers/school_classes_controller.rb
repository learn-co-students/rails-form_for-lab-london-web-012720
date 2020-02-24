class SchoolClassesController < ApplicationController
    def index #list of drinks
        @school_class = SchoolClass.all
    end
  
    def show #individual record. one drink for ex
        @school_class = SchoolClass.find(params[:id])
    end
  
    def new #display form for create a new record
        @school_class = SchoolClass.new
    end
  
    def create #save new record when clicked submit on "new"
        @school_class = SchoolClass.new(allowed_params)
  
        if @school_class.save
            redirect_to @school_class
        else
            redender "new"
        end
    end
  
    def edit #display form for the existing record
        @school_class = SchoolClass.find(params[:id])
    end
  
    def update #update the existing modified record
        @school_class = SchoolClass.find(params[:id])
  
        if @school_class.update_attributes(allowed_params)
            redirect_to @school_class
        else
            redender "new"
        end
    end
  
    def destroy
        @school_class = SchoolClass.find(params[:id])
        @school_class.destroy
        redirect_to school_classes_path
    end
  
    private
    def allowed_params
        params.require(:school_class).permit(:title, :room_number)
    end
end