class ChallengesController < ApplicationController
  def index
    @challenges = policy_scope(Challenge)
    @pending_challenges = Challenge.get_pending(current_user).first
    @other_challenges = Challenge.get_pending(current_user).last
  end

  def create
    @challenge = Challenge.new(challenges_params)
    @challenge.user = current_user
    @challenge.save
    @opponent = User.find(@challenge.opponent_id)
    authorize @challenge
  end

  def destroy
    @challenge = Challenge.find(params[:id])
    @challenge.destroy
    authorize @bookmark
  end

  private

  def challenges_params
    params.require(:challenge).permit(:user_id, :video_id, :opponent_id)
  end
end
