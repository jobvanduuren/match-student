class MatchesController < ApplicationController

  def index
    Match.remove_matches
    Match.create_matches2
    @matches = Match.all
  end

end
