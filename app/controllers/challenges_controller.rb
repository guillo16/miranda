class ChallengesController < ApplicationController
  def index
    @challenges = policy_scope(Challenge)
  end

  def create
    @challenge = Challenge.new(challenges_params)
    @challenge.save
    authorize @challenge
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    authorize @bookmark
  end

  private

  def challenges_params
    params.permit(:user_id, :video_id, :opponent_id)
  end
end
