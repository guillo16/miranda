class Challenge < ApplicationRecord
  belongs_to :user
  belongs_to :opponent, class_name: 'User'
  belongs_to :video

  def score
    user_score = 0
    opponent_score = 0

    self.video.questions.each do |q|
      q.answer_users.each do |ua|
        user_score += 1 if ua.user == self.user && ua.answer.correct
        opponent_score += 1 if ua.user == self.opponent && ua.answer.correct
      end
    end

    return {user: user_score, opponent: opponent_score}
  end

  def self.get_pending(user)
    @challenges = Challenge.where(["user_id = ? or opponent_id = ?", user.id, user.id])
    @pending_challenges = []
    @other_challenges = []
    @challenges.each do |challenge|
      @current_challenge = challenge
      challenge.video.questions.each do |question|
        question.answers.each do |answer|
          if AnswerUser.find_by(answer: answer, user: @current_challenge.user) && AnswerUser.find_by(answer: answer, user: @current_challenge.opponent)
            @challenge_done = true
          end
        end
      end
      if !@challenge_done && challenge.user != user
        @pending_challenges << challenge
      else
        @other_challenges << challenge
      end
    end
    return [@pending_challenges, @other_challenges]
  end

end
