class StudentsController < ApplicationController
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params(:first_name, :last_name))
        if @student.save
          flash[:success] = "Student successfully created"
          redirect_to @student
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end

    def show
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update_attributes(student_params(:first_name, :last_name))
          flash[:success] = "Student was successfully updated"
          redirect_to @student
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def student_params(*args)
      params.require(:student).permit(*args)
    end
    
end