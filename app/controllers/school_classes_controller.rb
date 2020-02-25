class SchoolClassesController < ApplicationController

    def index
        @school_classes = SchoolClass.all
    end

    def new
        @school_class = SchoolClass.new
    end

    def create
        @school_class = SchoolClass.create(strong_params)
        redirect_to @school_class
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        @school_class.update(strong_params)
        redirect_to @school_class
    end

    def destroy

    end

    private

    def strong_params
        params.require(:school_class).permit(:title, :room_number)
    end

end