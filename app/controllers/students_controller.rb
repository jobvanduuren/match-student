class StudentsController < ApplicationController

  def index
    @students = Student.all.chronological
    @student_count = @students.count
    @student = Student.new
  end

  def show
    @student = Student.find(params[:id])
  end

  def new
    @student = Student.new
  end

  def create
    student_params = params.require(:student).permit(:name)

    @student = Student.new(student_params)

    if @student.save
       redirect_to action: "index"
    else
       render 'new'
    end
  end

  def destroy
    @student = Student.find(params[:id])

    @student.destroy

    redirect_to students_path
  end

end
