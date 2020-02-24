class SchoolClassesController < ApplicationController
      
  
   before_action :set_schoolclass, only: [:show, :edit, :update]
    
    def index
      @schoolclasses = SchoolClass.all
    end

 def show
  @schoolclass = SchoolClass.find(params[:id])
 end


 def new 
@schoolclass = SchoolClass.new
 end
 
 def create 
@schoolclass = SchoolClass.create(allowed_params)

 redirect_to school_class_path(@schoolclass)
end

 def edit 
 end


 def update
  @schoolclass.update(allowed_params)
redirect_to school_class_path(@schoolclass)
 end

 def destroy
  @schoolclass = SchoolClass.find(params[:id])
  @schoolclass.destroy
  redirect_to school_classes_path

 end




    private 
    def set_schoolclass
      @schoolclass = SchoolClass.find(params[:id])
      end

      def allowed_params
       params.require(:school_class).permit(:title, :room_number)
        end

    
end
