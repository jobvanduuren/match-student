class MatchesController < ApplicationController

  def index
    # Match.remove_matches
    # Match.create_matches2
    @matches = Match.all
    @students = Student.all
    @student_count = @students.count
  end

  def my_method
    Match.remove_matches
    Match.create_matches2
    # @matches = Match.all
    redirect_to matches_path
  end


end
