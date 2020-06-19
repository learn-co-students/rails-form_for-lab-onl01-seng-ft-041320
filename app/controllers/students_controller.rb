class StudentsController < ApplicationController
    before_action :select_student, only: [:show, :edit, :update]

    def show
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to student_path(@student)
    end
    
    def edit
    end
    
    def update
        @student.update(student_params)
        redirect_to student_path(@student)
    end

    private

    def select_student
        @student = Student.find_by(id: params[:id])
    end

    def student_params
        params.require(:student).permit(:first_name, :last_name)
    end
end