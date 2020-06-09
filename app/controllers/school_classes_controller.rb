class SchoolClassesController < ApplicationController
    def new
        @school_class = SchoolClass.new
    end
    
    def create
        @school_class = SchoolClass.new(school_class_params(:title, :room_number))
        if @school_class.save
          flash[:success] = "SchoolClass successfully created"
          redirect_to @school_class
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def edit
        @school_class = SchoolClass.find(params[:id])
    end

    def show
        @school_class = SchoolClass.find(params[:id])
    end

    def update
        @school_class = SchoolClass.find(params[:id])
        if @school_class.update_attributes(school_class_params(:title, :room_number))
            
          flash[:success] = "SchoolClass was successfully updated"
          redirect_to @school_class
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    private

    def school_class_params(*args)
        params.require(:school_class).permit(*args)
    end
    
end
