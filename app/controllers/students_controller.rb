class StudentsController < ApplicationController

  def index
    @students = Student.all.chronological
    @student_count = @students.count
  end
end
