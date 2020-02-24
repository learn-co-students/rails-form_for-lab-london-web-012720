class StudentsController < ApplicationController
    def index #list of drinks
        @student = Student.all
    end
  
    def show #individual record. one drink for ex
        @student = Student.find(params[:id])
    end
  
    def new #display form for create a new record
        @student = Student.new
    end
  
    def create #save new record when clicked submit on "new"
        @student = Student.new(allowed_params)
  
        if @student.save
            redirect_to student_path(@student)
        else
            redender "new"
        end
    end
  
    def edit #display form for the existing record
        @student = Student.find(params[:id])
    end
  
    def update #update the existing modified record
        @student = Student.find(params[:id])
  
        if @student.update_attributes(allowed_params)
            redirect_to @student
        else
            redender "new"
        end
    end
  
    def destroy
        @student = Student.find(params[:id])
        @student.destroy
        redirect_to students_path
    end
  
    private
    def allowed_params
        params.require(:student).permit(:first_name, :last_name)
    end
 
end