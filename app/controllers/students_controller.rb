class StudentsController < ApplicationController
  
  def index
    @students = Student.all # presenting all students
  end

  def show
    @student = Student.find(params[:id]) # show a particular student
  end

  def new  #  creating a new student with a form
  end 

  def create
    Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name]) # creating the student
    redirect_to students_path
  end 
end
