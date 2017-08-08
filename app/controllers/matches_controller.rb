class MatchesController < ApplicationController

  def index
    Match.remove_matches
    Match.create_matches
    @matches = Match.all
  end

  

end
