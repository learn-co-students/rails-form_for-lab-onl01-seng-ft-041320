class StudentsController < ApplicationController
    def new
     @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        @student.save
        redirect_to student_path(@student)
    end
    
    def show
        @student = Student.find(params[:id])
    end
    
    def edit
        params.permit
        @student = Student.find(params[:id])
    end

    def update

        @student = Student.find(params[:id])
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def student_params
        params.require(:student).permit!
    end

    def find_student
        params.permit
        @student = Student.find(params[:id])
    end


end