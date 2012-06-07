class ChallengesController < ApplicationController
  def show
    @challenge = Challenge.find(params[:id])
  end
end
