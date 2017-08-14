class MatchesController < ApplicationController

  def index
    @matches = Match.all
    @students = Student.all
    @student_count = @students.count
  end

  def my_method
    Match.remove_matches
    Student.remove_dummy
    Match.create_matches
    redirect_to matches_path
  end


end
