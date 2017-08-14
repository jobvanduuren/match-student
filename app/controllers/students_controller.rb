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
    @student = Student.new(student_params)

    if @student.save
     Match.remove_matches
     flash[:notice] = "Student successfully created"
     redirect_to action: "index"
    else
      render 'new'
    end
    
  end

  def destroy
    @student = Student.find(params[:id])
    @student.destroy
    Match.remove_matches
    redirect_to students_path
  end

  private

  def student_params
    params.require(:student).permit(:name)
  end

end
