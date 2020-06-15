class StudentsController < ApplicationController

def index
    @students = Students.all
end

def new
    @student = Student.new
    
end

def create
   # @student = Student.new
    #@student[:first_name] = post_params[:student][:first_name]
    #@student[:last_name] = post_params[:student][:last_name]
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
end

def show
    @student = Student.find(params[:id])
end

def edit
    @student = Student.find(params[:id])
end

def update
    @student = Student.find(params[:id])
    @student = Student.update(student_params)
    redirect_to student_path(@student)
end


private

def student_params
    params.require(:student).permit(:first_name, :last_name)
end
end